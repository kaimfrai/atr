export module Test.Meta.Logic.Cache.PQR_or_nPnQ;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;

export
{
	auto constexpr inline
		PQR_or_nPnQ
	=	PQR or nPnQ
	;
	auto constexpr inline
		PQR_or_nPnR
	=	PQR or nPnR
	;
	auto constexpr inline
		PQR_or_nQnR
	=	PQR or nQnR
	;

	auto constexpr inline
		PQnR_or_nPnQ
	=	PQnR or nPnQ
	;
	auto constexpr inline
		PQnR_or_nPR
	=	PQnR or nPR
	;
	auto constexpr inline
		PQnR_or_nQR
	=	PQnR or nQR
	;

	auto constexpr inline
		PQ_or_nPnQR
	=	PQ or nPnQR
	;
	auto constexpr inline
		PQ_or_nPnQnR
	=	PQ or nPnQnR
	;

	auto constexpr inline
		PnQnR_or_nPQ
	=	PnQnR or nPQ
	;
	auto constexpr inline
		PnQnR_or_nPR
	=	PnQnR or nPR
	;
	auto constexpr inline
		PnQnR_or_QR
	=	PnQnR or QR
	;

	auto constexpr inline
		PR_or_nPQnR
	=	PR or nPQnR
	;
	auto constexpr inline
		PR_or_nPnQnR
	=	PR or nPnQnR
	;

	auto constexpr inline
		PnR_or_nPQR
	=	PnR or nPQR
	;
	auto constexpr inline
		PnR_or_nPnQR
	=	PnR or nPnQR
	;

	auto constexpr inline
		nPnQnR_or_QR
	=	nPnQnR or QR
	;
}
