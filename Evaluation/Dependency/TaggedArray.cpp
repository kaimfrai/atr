export module Evaluation.Dependency.TaggedArray;

import ATR.Instance;

import Meta.ID;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size;
import Meta.Token.Type;

import Std;

using ::Meta::ByteSize;
using ::Meta::ProtoID;
using ::Meta::Type;

export namespace
	Bodies3D
{
	ByteSize constexpr inline
		TagSize
	{	sizeof(unsigned char)
	};

	template
		<	auto const
			&	t_rInterface
		>
	struct
		Body3DReference
	{
		::std::byte const
		*	m_aData
		;

		unsigned char
			m_vTag
		;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		{	return
				t_rInterface
				.	ComputeVolume
					(	m_aData
					,	m_vTag
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

	template
		<	auto const
			&	t_rInterface
		>
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
			+=	t_rInterface
				.	ElementSize
			;
			m_aTag
			+=	TagSize
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
		->	Body3DReference<t_rInterface>
		{	return
			{	m_aData
			,	*
				::std::launder
				(	::std::bit_cast<unsigned char*>
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

	template
		<	auto const
			&	t_rInterface
		,	typename
			...	t_tpDistrict
		>
	struct
		TaggedArray
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
		(	TaggedArray
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
							*	(	t_rInterface
									.	ElementSize
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
			TaggedArray
		)	()
			noexcept
		{
			auto const
				vElementSize
			=	t_rInterface
				.	ElementSize
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
				t_rInterface
				.	Destroy
					(		aBuffer
						+	vIndex
						*	vElementSize
					,	*
						::std::launder
						(	::std::bit_cast<unsigned char*>
							(	aTagStart
							+	vIndex
							*	TagSize
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
			=	t_rInterface
				.	ElementSize
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
				,	t_tpDistrict
					...
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
			(	::std::bit_cast<unsigned char*>
				(	aTagStart
				+	vCount
				*	TagSize
				)
			,	t_rInterface
				.	ImplementerIndex
					(	Type<tBody>
					)
			);
		}

		[[nodiscard]]
		auto inline
		(	begin
		)	()	const&
			noexcept
		->	Body3DIterator<t_rInterface>
		{	return
			{	m_aBuffer
			,	(	m_aBuffer
				+	m_vCapacity
				*	t_rInterface
					.	ElementSize
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
			*	t_rInterface
				.	ElementSize
			};
		}
	};
}
