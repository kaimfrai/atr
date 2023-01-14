export module Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR_or_nQnR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR;

export
{
	auto constexpr inline
		PQR_or_nPnQ_or_nPnR_or_nQnR
	=	PQR_or_nPnQ_or_nPnR or nQnR
	;

	auto constexpr inline
		PQnR_or_nPnQ_or_nPR_or_nQR
	=	PQnR_or_nPnQ_or_nPR or nQR
	;
}
