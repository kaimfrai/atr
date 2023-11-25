export module Evaluation.TagATR.Interface;

import ATR.District.ExcludingHeap;
import ATR.Instance;

import Meta.ID;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size.Scale;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::ATR::District::ExcludingHeap;
using ::ATR::District::Info;

using ::Meta::ByteSize;
using ::Meta::ProtoID;
using ::Meta::Type;
using ::Meta::TypeID;

namespace
	Bodies3D
{
	using
		LocalBody
	=	ExcludingHeap
		<	Info{"Heap"}
		,	"ColorRed"
		,	"ColorGreen"
		,	"ColorBlue"
		,	"ColorAlpha"
		,	"PointLateral"
		,	"PointLongitudinal"
		,	"PointVertical"
		,	"Width"
		,	"Height"
		,	"Depth"
		>
	;

	struct
		Interface
	{
		[[nodiscard]]
		auto static
		(	ElementSize
		)	()
			noexcept
		->	ByteSize
		;

		[[nodiscard]]
		auto static
		(	ImplementerCount
		)	()
			noexcept
		->	unsigned char
		;

		[[nodiscard]]
		auto static
		(	ImplementerIndex
		)	(	TypeID
					i_vType
			)
			noexcept
		->	unsigned char
		;

		[[nodiscard]]
		auto static
		(	ComputeVolume
		)	(	::std::byte const
				*	i_aObject
			,	unsigned char
					i_vImplementerIndex
			)
			noexcept
		->	float
		;

		auto static
		(	Destroy
		)	(	::std::byte
				*	i_aObject
			,	unsigned char
					i_vImplementerIndex
			)
			noexcept
		->	void
		;
	};
}

export namespace
	Bodies3D
{
	enum class
		ETag
	:	unsigned char
	{};

	ByteSize constexpr inline
		TagSize
	{	sizeof(ETag)
	};

	struct
		Body3DReference
	{
		::std::byte const
		*	m_aData
		;

		ETag
			m_vTag
		;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		{	return
				Interface
				::	ComputeVolume
					(	m_aData
					,	static_cast<unsigned char>
						(	m_vTag
						)
					)
			;
		}
	};

	struct
		Body3DSentinel
	{
		::std::byte const
		*	m_aDataEnd
		;
	};

	struct
		Body3DIterator
	{
		::std::byte const
		*	m_aData
		;
		::std::byte const
		*	m_aTag
		;

		auto inline
		(	operator++
		)	()	&
			noexcept
		->	Body3DIterator&
		{
			m_aData
			+=	Interface
				::	ElementSize
					()
			;
			m_aTag
			+=	sizeof(ETag)
			;
			return
				*this
			;
		}

		[[nodiscard]]
		auto inline
		(	operator*
		)	()	&
			noexcept
		->	Body3DReference
		{	return
			{	m_aData
			,	*
				::std::launder
				(	::std::bit_cast<ETag*>
					(	m_aTag
					)
				)
			};
		}

		[[nodiscard]]
		auto friend inline
		(	operator==
		)	(	Body3DIterator
					i_aIterator
			,	Body3DSentinel
					i_aSentinel
			)
			noexcept
		->	bool
		{	return
				i_aIterator
				.	m_aData
			==	i_aSentinel
				.	m_aDataEnd
			;
		}
	};

	struct
		VolumeComputer
	{
		::std::byte
		*	m_aBuffer
		;

		::std::uint32_t
			m_vCapacity
		;

		::std::uint32_t
			m_vCount
		{};

	public:
		explicit(true) inline
		(	VolumeComputer
		)	(	::std::uint32_t
					i_vCapacity
			)
			noexcept
		:	m_aBuffer
			{	new	(	::std::nothrow
					)
				::std::byte
					[	static_cast<::std::size_t>
						(	ByteSize
							(	i_vCapacity
							*	(	Interface
									::	ElementSize
										()
								+	TagSize
								)
							).	get
								()
						)
					]
			}
		,	m_vCapacity
			{	i_vCapacity
			}
		{}

		inline
		(	compl
			VolumeComputer
		)	()
			noexcept
		{
			auto const
				vElementSize
			=	Interface
				::	ElementSize
					()
			;

			auto const
				vCount
			=	m_vCount
			;
			auto const
				aBuffer
			=	m_aBuffer
			;
			auto const
				aTagStart
			=	aBuffer
			+	m_vCapacity
			*	vElementSize
			;

			for	(	auto
						vIndex
					=	0z
				;	(	vIndex
					<	vCount
					)
				;	++	vIndex
				)
			{
				Interface
				::	Destroy
					(		aBuffer
						+	vIndex
						*	vElementSize
					,	static_cast<unsigned char>
						(	*
							::std::launder
							(	::std::bit_cast<ETag*>
								(	aTagStart
								+	vIndex
								*	TagSize
								)
							)
						)
					)
				;
			}

			delete
				[]
				m_aBuffer
			;
		}

		auto inline
		(	emplace_back
		)	(	ProtoID auto
					i_vTypeName
			)	&
			noexcept
		{
			auto const
				vBodySize
			=	Interface
				::	ElementSize
					()
			;
			auto const
				vCount
			=	m_vCount
				++
			;
			auto const
				aBuffer
			=	m_aBuffer
			;
			auto const
				aTagStart
			=	aBuffer
			+	m_vCapacity
			*	vBodySize
			;

			using
				tBody
			=	::ATR::Instance
				<	decltype(i_vTypeName)
				,	LocalBody
				>
			;

			::std::construct_at
			(	::std::bit_cast<tBody*>
				(	aBuffer
				+	vCount
				*	vBodySize
				)
			);
			::std::construct_at
			(	::std::bit_cast<ETag*>
				(	aTagStart
				+	vCount
				*	TagSize
				)
			,	static_cast<ETag>
				(	Interface
					::	ImplementerIndex
						(	Type<tBody>
						)
				)
			);
		}

		[[nodiscard]]
		auto inline
		(	begin
		)	()	const&
			noexcept
		->	Body3DIterator
		{	return
			{	m_aBuffer
			,	(	m_aBuffer
				+	m_vCapacity
				*	Interface
					::	ElementSize
						()
				)
			};
		}

		[[nodiscard]]
		auto inline
		(	end
		)	()	const&
			noexcept
		->	Body3DSentinel
		{	return
			{	m_aBuffer
			+	m_vCapacity
			*	Interface
				::	ElementSize
					()
			};
		}
	};
}
