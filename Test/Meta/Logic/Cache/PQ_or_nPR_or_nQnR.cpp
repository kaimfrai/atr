export module Test.Meta.Logic.Cache.PQ_or_nPR_or_nQnR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_nPR;

export
{
	auto constexpr inline
		PQ_or_nPR_or_nQnR
	=	PQ_or_nPR or nQnR
	;

	auto constexpr inline
		PnR_or_nPnQ_or_QR
	=	PnR_or_nPnQ or QR
	;
}
