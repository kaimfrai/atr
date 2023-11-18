export module Evaluation.TagATR.Interface;

import ATR.District.ExcludingHeap;
import ATR.Instance;

import Meta.ID;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::ProtoID;
using ::Meta::Type;

using ::ATR::District::ExcludingHeap;
using ::ATR::District::Info;

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
		->	::std::size_t
		;

		[[nodiscard]]
		auto static
		(	ImplementerCount
		)	()
			noexcept
		->	int
		;

		[[nodiscard]]
		auto static
		(	ImplementerIndex
		)	(	TypeID
					i_vType
			)
			noexcept
		->	int
		;

		[[nodiscard]]
		auto static
		(	ComputeVolume
		)	(	::std::byte const
				*	i_aObject
			,	int
					i_vImplementerIndex
			)
			noexcept
		->	float
		;

		auto static
		(	Destroy
		)	(	::std::byte
				*	i_aObject
			,	int
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

	auto constexpr inline
		TagSize
	=	sizeof(ETag)
	;

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
					,	static_cast<int>
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
		->	Body3DIterator
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
	};

	[[nodiscard]]
	auto inline
	(	operator==
	)	(	Body3DIterator
				i_vIterator
		,	Body3DSentinel
				i_aSentinel
		)
		noexcept
	->	bool
	{	return
			i_vIterator
			.	m_aData
		==	i_aSentinel
			.	m_aDataEnd
		;
	}


	struct
		VolumeComputer
	{
		::std::byte
		*	m_aBuffer
		;

		::std::int32_t
			m_vCount
		;

		::std::int32_t
			m_vCapacity
		;

	public:
		explicit(true) inline
		(	VolumeComputer
		)	(	::std::int32_t
					i_vCapacity
			)
			noexcept
		:	m_aBuffer
			{	new	(	::std::nothrow
					)
				::std::byte
					[	static_cast<::std::size_t>
						(	i_vCapacity
						)
					*	(	Interface
							::	ElementSize
								()
						+	TagSize
						)
					]
			}
		,	m_vCount
			{}
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
			+	static_cast<::std::size_t>(m_vCapacity)
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
					(	aBuffer
						+	static_cast<::std::size_t>(vIndex)
						*	vElementSize
					,	static_cast<int>
						(	*
							::std::launder
							(	::std::bit_cast<ETag*>
								(	aTagStart
								+	static_cast<::std::size_t>(vIndex)
								*	TagSize
								)
							)
						)
					)
				;
			}

			delete[]
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
			::std::size_t const
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
			+	static_cast<::std::size_t>(m_vCapacity)
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
				+	static_cast<::std::size_t>(vCount)
				*	vBodySize
				)
			);
			::std::construct_at
			(	::std::bit_cast<ETag*>
				(	aTagStart
				+	static_cast<::std::size_t>(vCount)
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
		)	()	&
			noexcept
		->	Body3DIterator
		{	::std::size_t const
				vBodySize
			=	Interface
				::	ElementSize
					()
			;
			return
			{	m_aBuffer
			,	(	m_aBuffer
				+	static_cast<::std::size_t>(m_vCapacity)
				*	vBodySize
				)
			};
		}

		[[nodiscard]]
		auto inline
		(	end
		)	()	&
			noexcept
		->	Body3DSentinel
		{	::std::size_t const
				vBodySize
			=	Interface
				::	ElementSize
					()
			;
			return
			{	(	m_aBuffer
				+	static_cast<::std::size_t>(m_vCapacity)
				*	vBodySize
				)
			};
		}
	};
}
