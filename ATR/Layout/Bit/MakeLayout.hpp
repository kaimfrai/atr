export module ATR:Layout.Bit.MakeLayout;

import Meta.ID;
import :Layout.Bit.Layout;
import :Layout.Bit.View;
import :Layout.Member;

import Meta.Arithmetic;
import Meta.Token;

import Std;

using ::Meta::Specifier::BitField;
using ::Meta::Specifier::Mut;
using ::Meta::Sequence;
using ::Meta::IndexToken;
using ::Meta::USize;

template
	<	USize
			t_nSize
	>
auto constexpr
(	BitFieldOffsetArray
)	(	::std::array<USize, t_nSize> const
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
	<	USize
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
	,	BitField<1>
	,	t_tName
	>
;

template
	<	USize
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
	,	BitField<1> const
	,	t_tName
	>
;

template
	<	USize
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
	,	BitField<1> volatile
	,	t_tName
	>
;

template
	<	USize
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
	,	BitField<1> const volatile
	,	t_tName
	>
;

template
	<	USize
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
	,	Mut<BitField<1>>
	,	t_tName
	>
;

template
	<	USize
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
	,	Mut<BitField<1> volatile>
	,	t_tName
	>
;

template
	<	USize
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
	,	BitField<1>[t_nExtent]
	,	t_tName
	>
;

template
	<	USize
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
	,	BitField<1> const[t_nExtent]
	,	t_tName
	>
;

template
	<	USize
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
	,	BitField<1> volatile[t_nExtent]
	,	t_tName
	>
;

template
	<	USize
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
	,	BitField<1> const volatile[t_nExtent]
	,	t_tName
	>
;

template
	<	USize
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
	,	Mut<BitField<1>[t_nExtent]>
	,	t_tName
	>
;

template
	<	USize
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
	,	Mut<BitField<1> volatile[t_nExtent]>
	,	t_tName
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
