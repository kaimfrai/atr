export module Evaluation.Dependency.TaggedArray;

import ATR.Erase;
import ATR.Instance;

import Meta.Generic.RandomAccessIteratorBase;
import Meta.ID;
import Meta.Token.Type;

import std;

using ::Meta::Generic::RandomAccessIteratorBase;
using ::Meta::ProtoID;
using ::Meta::Type;

export namespace
	Bodies3D
{
	auto constexpr inline
		TagSize
	=	sizeof(unsigned char)
	;

	template
		<	auto const
			&	t_rInterface
		>
	struct
		Body3DValue
	;

	template
		<	auto const
			&	t_rInterface
		>
	struct
		Body3DReference
	{
		using
			ReferencedValue
		=	Body3DValue
			<	t_rInterface
			>
		;

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
					(	::ATR::CErasure
						{	.	m_aData
							=	m_aData
						}
					,	m_vTag
					)
			;
		}
	};

	template
		<	auto const
			&	t_rInterface
		>
	struct
		Body3DIterator
	:	RandomAccessIteratorBase
		<	Body3DReference
			<	t_rInterface
			>
		>
	{
		::std::byte const
		*	m_aData
		;
		::std::byte const
		*	m_aTag
		;

		auto constexpr inline
		(	operator+=
		)	(	this Body3DIterator
				&	i_rThis
			,	Body3DIterator::difference_type
					i_vDifference
			)
			noexcept
		->	decltype(i_rThis)
		{
			i_rThis
			.	m_aData
			+=	static_cast<Body3DIterator::difference_type>
				(	t_rInterface
					.	ElementSize
				)
			*	i_vDifference
			;
			i_rThis
			.	m_aTag
			+=	static_cast<Body3DIterator::difference_type>
				(	TagSize
				)
			*	i_vDifference
			;

			return
				i_rThis
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	Body3DIterator
					i_aLeft
			,	Body3DIterator
					i_aRight
			)
			noexcept
		->	Body3DIterator::difference_type
		{	return
				(	i_aLeft
					.	m_aData
				-	i_aRight
					.	m_aData
				)
			/	static_cast<Body3DIterator::difference_type>
				(	t_rInterface
					.	ElementSize
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	(	this Body3DIterator
					i_aThis
			)
			noexcept
		->	Body3DIterator::reference
		{	return
			{	i_aThis
				.	m_aData
			,	*
				::std::launder
				(	::std::bit_cast<unsigned char*>
					(	i_aThis
						.	m_aTag
					)
				)
			};
		}

		[[nodiscard]]
		auto friend inline
		(	operator==
		)	(	Body3DIterator
					i_aLeft
			,	Body3DIterator
					i_aRight
			)
			noexcept
		->	bool
		{	return
				i_aLeft
				.	m_aData
			==	i_aRight
				.	m_aData
			;
		}

		[[nodiscard]]
		auto friend inline
		(	operator<=>
		)	(	Body3DIterator
					i_aLeft
			,	Body3DIterator
					i_aRight
			)
			noexcept
		->	decltype(auto)
		{	return
				i_aLeft
				.	m_aData
			<=>	i_aRight
				.	m_aData
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
					[	i_vCapacity
					*	(	t_rInterface
							.	ElementSize
						+	TagSize
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
					=	0u
				;		vIndex
					<	vCount
				;	++	vIndex
				)
			{
				t_rInterface
				.	Destroy
					(	::ATR::RErasure
						{	.	m_aData
						=		aBuffer
							+	vIndex
							*	vElementSize
						}
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

		template
			<	ProtoID
					t_tTypeName
			,	typename
					t_tBody
				=	::ATR::Instance
					<	t_tTypeName
					,	t_tpDistrict
						...
					>
			>
		auto inline
		(	emplace_back
		)	(	t_tTypeName
			,	typename t_tBody::BaseDistrict
				&&	i_rBaseDistrict
			,	typename t_tBody::template District<t_tpDistrict>
				&&
				...	i_rpDistrictGuard
			)	&
			noexcept
		->	decltype(auto)
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

			auto
			*	aBody
			=	::std::construct_at
				(	::std::bit_cast<t_tBody*>
					(	aBuffer
					+	vCount
					*	vBodySize
					)
				,	typename t_tBody::template DistrictVanguard<t_tpDistrict>
					{}
					...
				,	::std::move
					(	i_rBaseDistrict
					)
				,	::std::move
					(	i_rpDistrictGuard
					)
					...
				)
			;
			::std::construct_at
			(	::std::bit_cast<unsigned char*>
				(	aTagStart
				+	vCount
				*	TagSize
				)
			,	t_rInterface
				.	ImplementerIndex
					(	Type<t_tBody>
					)
			);

			return
			*	aBody
			;
		}

		[[nodiscard]]
		auto inline
		(	begin
		)	()	const&
			noexcept
		->	Body3DIterator<t_rInterface>
		{	return
			{	.	m_aData
				=	m_aBuffer
			,	.	m_aTag
				=	(	m_aBuffer
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
		->	Body3DIterator<t_rInterface>
		{	return
			{	.	m_aData
				=	(	m_aBuffer
					+	m_vCapacity
					*	t_rInterface
						.	ElementSize
					)
			,	.	m_aTag
				=	(	m_aBuffer
					+	m_vCapacity
					*	(	t_rInterface
							.	ElementSize
						+	TagSize
						)
					)
			};
		}
	};
}
