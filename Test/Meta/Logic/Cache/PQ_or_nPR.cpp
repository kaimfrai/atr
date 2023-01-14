export module Test.Meta.Logic.Cache.PQ_or_nPR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;

export
{
	auto constexpr inline
		PQ_or_nPR
	=	PQ or nPR
	;
	auto constexpr inline
		PQ_or_nPnR
	=	PQ or nPnR
	;

	auto constexpr inline
		PQ_or_nQR
	=	PQ or nQR
	;
	auto constexpr inline
		PQ_or_nQnR
	=	PQ or nQnR
	;

	auto constexpr inline
		PnR_or_nPQ
	=	PnR or nPQ
	;
	auto constexpr inline
		PnR_or_nPnQ
	=	PnR or nPnQ
	;

	auto constexpr inline
		PnQ_or_nPR
	=	PnQ or nPR
	;
	auto constexpr inline
		PnQ_or_nPnR
	=	PnQ or nPnR
	;
}
