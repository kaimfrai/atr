export module Test.Meta.Logic.Cache.PQ_or_PR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;

export
{
	auto constexpr inline
		PQ_or_PR
	=	PQ or PR
	;
	auto constexpr inline
		PQ_or_QR
	=	PQ or QR
	;
	auto constexpr inline
		PQ_or_QnR
	=	PQ or QnR
	;
	auto constexpr inline
		PQ_or_PnR
	=	PQ or PnR
	;

	auto constexpr inline
		nPQ_or_nPR
	=	nPQ or nPR
	;

	auto constexpr inline
		nPQ_or_QR
	=	nPQ or QR
	;

	auto constexpr inline
		nPnR_or_nPnQ
	=	nPnR or nPnQ
	;
}
