export module ATR:Layout.Bit.MakeLayout;

import Meta.ID;
import :Layout.Bit.Layout;
import :Layout.Bit.View;
import :Layout.Member;

import Meta.Size;
import Meta.Token;
import Meta.Bit.Size;

import Std;

using ::Meta::Specifier::BitField;
using ::Meta::Specifier::Mut;
using ::Meta::Sequence;
using ::Meta::IndexToken;
using ::Meta::USize;

using namespace ::Meta::Literals;

template
	<	USize
			t_nSize
	>
auto constexpr
(	BitFieldOffsetArray
)	(	::std::array<::Meta::BitSize, t_nSize> const
		&	i_rSizes
	)
->	::std::array<::Meta::BitSize, t_nSize>
{
	::std::array<::Meta::BitSize, t_nSize>
		vOffsetArray
	{};

	::std::transform
	(	begin(i_rSizes)
	,	end(i_rSizes)
	,	begin(vOffsetArray)
	,	[	m_nOffset = 0_bit
		]	(	::Meta::BitSize
					i_nSize
			)	mutable
		->	::Meta::BitSize
		{
			auto const nCurrent = m_nOffset;
			m_nOffset += i_nSize;
			return nCurrent;
		}
	);
	return vOffsetArray;
}

template
	<	::Meta::BitSize
			t_nOffset
	,	typename
			t_tData
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<t_tData, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	t_tData
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<bool, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	BitField<1_bit>
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<bool const, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	BitField<1_bit> const
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<bool volatile, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	BitField<1_bit> volatile
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<bool const volatile, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	BitField<1_bit> const volatile
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<Mut<bool>, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	Mut<BitField<1_bit>>
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<Mut<bool volatile>, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	Mut<BitField<1_bit> volatile>
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	USize
			t_nExtent
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<bool[t_nExtent], t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	BitField<1_bit>[t_nExtent]
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	USize
			t_nExtent
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<bool const[t_nExtent], t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	BitField<1_bit> const[t_nExtent]
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	USize
			t_nExtent
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<bool volatile[t_nExtent], t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	BitField<1_bit> volatile[t_nExtent]
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	USize
			t_nExtent
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<bool const volatile[t_nExtent], t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	BitField<1_bit> const volatile[t_nExtent]
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	USize
			t_nExtent
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<Mut<bool[t_nExtent]>, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	Mut<BitField<1_bit>[t_nExtent]>
	,	t_tName
	>
;

template
	<	::Meta::BitSize
			t_nOffset
	,	USize
			t_nExtent
	,	::Meta::ProtoID
			t_tName
	>
auto constexpr
(	MakeBitView
)	(	::Member<Mut<bool volatile[t_nExtent]>, t_tName>
	)
->	::ATR::Bit::View
	<	t_nOffset
	,	Mut<BitField<1_bit> volatile[t_nExtent]>
	,	t_tName
	>
;

template
	<	::Meta::BitSize
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

export template
	<	typename
		...	t_tpBitFieldMember
	>
auto constexpr
(	MakeBitLayout
)	()
{
	auto constexpr
		vOffsetArray
	=	::BitFieldOffsetArray
		(	::std::array
			{	t_tpBitFieldMember::BitSize
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
		::ATR::Bit::Layout
		<	DeduceBitView
			<	vOffsetArray[t_npIndex]
			,	t_tpBitFieldMember
			>
			...
		>{};
	}(	Sequence<sizeof...(t_tpBitFieldMember)>
	);
}
