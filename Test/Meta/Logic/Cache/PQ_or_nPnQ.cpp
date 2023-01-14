export module Test.Meta.Logic.Cache.PQ_or_nPnQ;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;

export
{
	auto constexpr inline
		PQ_or_nPnQ
	=	PQ or nPnQ
	;
	auto constexpr inline
		PnQ_or_nPQ
	=	PnQ or nPQ
	;

	auto constexpr inline
		PR_or_nPnR
	=	PR or nPnR
	;

	auto constexpr inline
		PnR_or_nPR
	=	PnR or nPR
	;
}
