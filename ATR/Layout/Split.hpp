module ATR:Layout.Split;

import :Layout.BitField;
import :Layout.LayoutFwd;
import :Layout.Member;

import Meta.Arithmetic;
import Meta.Token;
import Std;

using ::ATR::Layout;

using ::Meta::IgnoreIndexedElement;
using ::Meta::IndexToken;
using ::Meta::ProtoIndexedElement;
using ::Meta::USize;
using ::Meta::ZeroSequence;

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
	->	Layout
		<	t_tpFront
			...
		>
	{	return {};	}

	template
		<	typename
				t_tFirstBack
		,	typename
			...	t_tpBack
		>
	static auto constexpr
	(	Back
	)	(	IgnoreIndexedElement<t_npIndex>
			...
		,	t_tFirstBack*
		,	t_tpBack*
			...
		)
	{
		if	constexpr
			(	t_tFirstBack
			::	BitAlign
			==	1uz
			)
		{
			return
			MakeBitLayout
			<	t_tFirstBack
			,	t_tpBack
				...
			>();
		}
		else
			return
			Layout
			<	t_tFirstBack
			,	t_tpBack
				...
			>{};
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
