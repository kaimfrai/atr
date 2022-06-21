export module ATR:Layout.BitField;

import :ID;
import :Layout.BitReference;
import :Layout.BitOffset;
import :Layout.Member;

import Meta.Arithmetic;

import Std;

using ::ATR::ProtoID;

using ::Meta::Arithmetic::ReadFromBytes;
using ::Meta::Arithmetic::WriteToBytes;
using ::Meta::BitsPerByte;
using ::Meta::IndexToken;
using ::Meta::Sequence;
using ::Meta::UInt;
using ::Meta::USize;

export namespace
	ATR
{
	template
		<	USize
				t_nOffset
		,	USize
				t_nSize
		,	char const
			&
			...	t_rpName
		>
	struct
		BitViewBase
	{
		static auto constexpr
			BitSize
		=	t_nSize
		;
		using
			reference
		=	BitReference
			<	t_nOffset
			,	BitSize
			>
		;

		static auto constexpr
		(	View
		)	(	::ATR::ID<t_rpName...>
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	reference
		{	return
			{	i_aBuffer
			};
		}

		static auto constexpr
		(	MoveView
		)	(	::ATR::ID<t_rpName...>
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	typename reference::FieldType
		{	return
				reference
			::	ReadField(i_aBuffer)
			;
		}
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	char const
			&
			...	t_rpName
		>
	struct
		BitView
	:	BitViewBase
		<	t_nOffset
		,	::Meta::BitSize
			(	::Meta::Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ConstView
		)	(	::ATR::ID<t_rpName...>
					i_vName
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			MoveView
			(	i_vName
			,	i_aBuffer
			);
		}

		template
			<	typename
				...	t_tpTransform
			>
		static auto constexpr
		(	OffsetOf
		)	(	::ATR::ID<t_rpName...>
			,	::Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		{
			using
				tTransformed
			=	Meta::TypeEntity
				<	i_vTransform
					(	Meta::Type<t_tEntity>
					)
				>
			;

			auto constexpr
				nByteOffset
			=	t_nOffset / ::Meta::BitsPerByte
			;
			auto constexpr
				nBitOffset
			=	t_nOffset - nByteOffset
			;

			//	only opt into using BitReference for T&
			if	constexpr
				(	::std::is_lvalue_reference_v<tTransformed>
				and	not
					::std::is_const_v
					<	::std::remove_reference_t
						<	tTransformed
						>
					>
				)
			{	return
				BitOffset
				<	nBitOffset
				,	tTransformed
				>{	nByteOffset
				};
			}
			else
			{	return
				BitOffset
				<	nBitOffset
				,	::std::remove_cvref_t
					<	tTransformed
					>
				>{	nByteOffset
				};
			}
		}
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	char const
			&
			...	t_rpName
		>
	struct
		BitView
		<	t_nOffset
		,	::Meta::Specifier::Mutable<t_tEntity>
		,	t_rpName
			...
		>
	:	BitViewBase
		<	t_nOffset
		,	::Meta::BitSize
			(	::Meta::Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ConstView
		)	(	::ATR::ID<t_rpName...>
					i_vName
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			View
			(	i_vName
			,	i_aBuffer
			);
		}

		template
			<	typename
				...	t_tpTransform
			>
		static auto constexpr
		(	OffsetOf
		)	(	::ATR::ID<t_rpName...>
			,	::Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		{
			using
				tTransformed
			=	Meta::TypeEntity
				<	i_vTransform
					(	Meta::Type<t_tEntity>
					)
				>
			;

			auto constexpr
				nByteOffset
			=	t_nOffset / ::Meta::BitsPerByte
			;
			auto constexpr
				nBitOffset
			=	t_nOffset - nByteOffset
			;

			//	for mutable, opt into using BitReference for T const& and T&
			if	constexpr
				(	::std::is_lvalue_reference_v<tTransformed>
				)
			{	return
				BitOffset
				<	nBitOffset
				,	tTransformed
				>{	nByteOffset
				};
			}
			else
			{	return
				BitOffset
				<	nBitOffset
				,	::std::remove_cvref_t
					<	tTransformed
					>
				>{	nByteOffset
				};
			}
		}
	};

	template
		<	typename
			...	t_tpBitView
		>
	struct
		BitLayout
	:	t_tpBitView
		...
	{
		using t_tpBitView::View...;
		using t_tpBitView::ConstView...;
		using t_tpBitView::MoveView...;
		using t_tpBitView::OffsetOf...;

		static auto constexpr
			BitCount
		=(	0uz
		+	...
		+	t_tpBitView
		::	BitSize
		);

		static auto constexpr
			BufferSize
		=	BitCount / BitsPerByte
		;

		// must be mutable in case one bitfield is mutable
		mutable ::std::byte
			Buffer
			[	BufferSize
			]
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			View
			(	i_vMemberID
			,	+Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			ConstView
			(	i_vMemberID
			,	+Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			MoveView
			(	i_vMemberID
			,	+Buffer
			);
		}
	};
}

template
	<	Meta::USize
			t_nSize
	>
auto constexpr
(	BitFieldOffsetArray
)	(	::std::array<::Meta::USize, t_nSize> const
		&	i_rSizes
	)
->	::std::array<USize, t_nSize>
{
	::std::array<USize, t_nSize>
		vOffsetArray
	{};

	::std::transform
	(	begin(i_rSizes)
	,	end(i_rSizes)
	,	begin(vOffsetArray)
	,	[	m_nOffset = 0uz
		]	(	USize
					i_nSize
			)	mutable
		->	USize
		{
			auto const nCurrent = m_nOffset;
			m_nOffset += i_nSize;
			return nCurrent;
		}
	);
	return vOffsetArray;
}

template
	<	USize
			t_nOffset
	,	typename
			t_tData
	,	char const
		&
		...	t_rpName
	>
auto constexpr
(	MakeBitView
)	(	::Member<t_tData, t_rpName...>
	)
->	ATR::BitView
	<	t_nOffset
	,	t_tData
	,	t_rpName
		...
	>
;

template
	<	USize
			t_nOffset
	,	typename
			t_tMember
	>
using
	DeduceBitView
=	decltype
	(	MakeBitView
		<	t_nOffset
		>(	t_tMember{}
		)
	)
;

template
	<	typename
		...	t_tpBitFieldMember
	>
auto constexpr
(	MakeBitLayout
)	()
{
	auto constexpr
		vOffsetArray
	=	BitFieldOffsetArray
		(	{	t_tpBitFieldMember::BitSize
				...
			}
		)
	;

	return
	[	&vOffsetArray
	]	<	USize
			...	t_npIndex
		>(	IndexToken<t_npIndex...>
		)
	{
		return
		ATR::BitLayout
		<	DeduceBitView
			<	vOffsetArray[t_npIndex]
			,	t_tpBitFieldMember
			>
			...
		>{};
	}(	Sequence<sizeof...(t_tpBitFieldMember)>
	);
}
