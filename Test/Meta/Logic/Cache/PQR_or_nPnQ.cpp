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
		PQnR_or_nPnQ
	=	PQnR or nPnQ
	;

	auto constexpr inline
		PnQnR_or_nPQ
	=	PnQnR or nPQ
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
		nPQ_or_PnQnR
	=	nPQ or PnQnR
	;
	auto constexpr inline
		PnR_or_nPnQR
	=	PnR or nPnQR
	;
}
