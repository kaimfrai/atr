export module Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_PR;
import Test.Meta.Logic.Cache.PQ_or_nPnQ;

export
{
	auto constexpr inline
		PQ_or_PR_or_nPnQ
	=	PQ_or_PR or nPnQ
	;
	auto constexpr inline
		PQ_or_PnR_or_nPnQ
	=	PQ_or_PnR or nPnQ
	;

	auto constexpr inline
		PQ_or_nPnQ_or_nQR
	=	PQ_or_nPnQ or nQR
	;
}
