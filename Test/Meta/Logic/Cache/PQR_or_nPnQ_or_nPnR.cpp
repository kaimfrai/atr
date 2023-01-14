export module Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.PQ_or_PR;
import Test.Meta.Logic.Cache.PQR_or_nPnQ;

export
{
	auto constexpr inline
		PQR_or_nPnQ_or_nPnR
	=	PQR_or_nPnQ or nPnR
	;
	auto constexpr inline
		PQnR_or_nPnQ_or_nPR
	=	PQnR_or_nPnQ or nPR
	;
	auto constexpr inline
		PQR_or_nPnQ_or_nQnR
	=	PQR_or_nPnQ or nQnR
	;
	auto constexpr inline
		PQR_or_nPnR_or_nQnR
	=	PQR_or_nPnR or nQnR
	;

	auto constexpr inline
		PQ_or_PR_or_nPnQnR
	=	PQ_or_PR or nPnQnR
	;
	auto constexpr inline
		PQ_or_PnR_or_nPnQR
	=	PQ_or_PnR or nPnQR
	;

	auto constexpr inline
		PnQnR_or_nPQ_or_nPR
	=	PnQnR_or_nPQ or nPR
	;
	auto constexpr inline
		PnQnR_or_nPQ_or_QR
	=	PnQnR_or_nPQ or QR
	;
	auto constexpr inline
		PnQnR_or_nPR_or_QR
	=	PnQnR_or_nPR or QR
	;

	auto constexpr inline
		PnQ_or_PR_or_nPQnR
	=	PnQ_or_PR or nPQnR
	;
	auto constexpr inline
		PnQ_or_PnR_or_nPQR
	=	PnQ_or_PnR or nPQR
	;
}
