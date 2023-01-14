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

	auto constexpr inline
		PQ_or_PR_or_nPnQnR_or_QR
	=	PQ_or_PR_or_nPnQnR or QR
	;
	auto constexpr inline
		PQ_or_PnR_or_nPnQR_or_QnR
	=	PQ_or_PnR_or_nPnQR or QnR
	;

	auto constexpr inline
		PnQnR_or_nPQ_or_nPR_or_QR
	=	PnQnR_or_nPQ_or_nPR or QR
	;

	auto constexpr inline
		PnQ_or_PR_or_nPQnR_or_nQR
	=	PnQ_or_PR_or_nPQnR or nQR
	;
}
