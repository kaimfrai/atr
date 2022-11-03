module ATR:Layout.Split;

import :Layout.LayoutFwd;
import :Layout.Bit.MakeLayout;
import :Layout.Member;

import Meta.Arithmetic;
import Meta.Token;

import std;

using ::ATR::Layout;

using ::Meta::IgnoreIndexedElement;
using ::Meta::IndexToken;
using ::Meta::ProtoIndexedElement;
using ::Meta::USize;
using ::Meta::ZeroSequence;

export template
	<	typename
		...	t_tpMember
	>
auto constexpr
(	MakeLayout
)	()
->	decltype(auto)
{
	if	constexpr
		((	...
		and	(	1uz
			==	t_tpMember
			::	BitAlign
			)
		))
		return
		MakeBitLayout
		<	t_tpMember
			...
		>();
	else
		return
		Layout
		<	t_tpMember
			...
		>{};
}


template
	<	USize
		...	t_npIndex
	>
struct
	SplitPack final
{
	[[no_unique_address]]
	IndexToken<t_npIndex...>
		Sequence
	;

	template
		<	ProtoIndexedElement<t_npIndex>
			...	t_tpFront
		>
	static auto constexpr
	(	Front
	)	(	t_tpFront*
			...
		,	...
		)
	->	decltype(auto)
	{	return
		MakeLayout<t_tpFront...>
		();
	}

	template
		<	typename
			...	t_tpBack
		>
	static auto constexpr
	(	Back
	)	(	IgnoreIndexedElement<t_npIndex>
			...
		,	t_tpBack*
			...
		)
	->	decltype(auto)
	{	return
		MakeLayout<t_tpBack...>
		();
	}
};

template
	<	USize
		...	t_npIndex
	>
(	SplitPack
)	(	IndexToken<t_npIndex...>
	)
->	SplitPack
	<	t_npIndex
		...
	>
;

[[nodiscard]]
auto constexpr
(	LayoutSplitIndex
)	(	::std::initializer_list
		<	USize
		>	i_vAlignList
	)
->	USize
{
	auto const
		aFirst
	=	begin(i_vAlignList)
	;
	auto const
		aLast
	=	end(i_vAlignList)
	-	1uz
	;
	if	(	*aFirst
		==	*aLast
		)
		return
		::std::bit_floor<Meta::USize>
		(	i_vAlignList.size()
		-	1uz
		);
	else
	{	auto const
			aSplitPoint
		=	::std::upper_bound
			(	aFirst
			,	aLast + 1z
			,	*aFirst
			)
		;
		return
		static_cast<Meta::USize>
		(	aSplitPoint
		-	aFirst
		);
	}
}

template
	<	typename
			t_tPointed
	>
t_tPointed constexpr
*	NullPtr
=	nullptr
;

template
	<	typename
		...	t_tpMember
	>
struct
	SplitLayout final
{
	static USize constexpr
		SplitIndex
	=	LayoutSplitIndex
		({	t_tpMember::SortKey
			...
		})
	;

	static SplitPack constexpr
		LayoutSplit
	{	ZeroSequence<SplitIndex>
	};

	using
		North
	=	decltype
		(	LayoutSplit
		.	Front
			(	static_cast
				<	t_tpMember*
				>(	nullptr
				)
				...
			)
		)
	;

	using
		South
	=	decltype
		(	LayoutSplit
		.	Back
			(	static_cast
				<	t_tpMember*
				>(	nullptr
				)
				...
			)
		)
	;
};

template
	<	typename
		...	t_tpMember
	>
using
	SplitLayoutNorth
=	typename
	SplitLayout<t_tpMember...>
::	North
;

template
	<	typename
		...	t_tpMember
	>
using
	SplitLayoutSouth
=	typename
	SplitLayout<t_tpMember...>
::	South
;
