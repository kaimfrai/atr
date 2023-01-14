export module Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_PR;
import Test.Meta.Logic.Cache.PQ_or_nPnQ;
import Test.Meta.Logic.Cache.PQ_or_nPR;

export
{
	auto constexpr inline
		PQ_or_PR_or_nPnQ
	=	PQ_or_PR or nPnQ
	;
	auto constexpr inline
		PQ_or_PR_or_nPnR
	=	PQ_or_PR or nPnR
	;

	auto constexpr inline
		PQ_or_PnR_or_nPnQ
	=	PQ_or_PnR or nPnQ
	;
	auto constexpr inline
		PQ_or_PnR_or_nPR
	=	PQ_or_PnR or nPR
	;

	auto constexpr inline
		PQ_or_nPnQ_or_nPR
	=	PQ_or_nPnQ or nPR
	;
	auto constexpr inline
		PQ_or_nPnQ_or_QR
	=	PQ_or_nPnQ or QR
	;
	auto constexpr inline
		PQ_or_nPnQ_or_QnR
	=	PQ_or_nPnQ or QnR
	;
	auto constexpr inline
		PQ_or_nPnQ_or_nQR
	=	PQ_or_nPnQ or nQR
	;
	auto constexpr inline
		PQ_or_nPnQ_or_nQnR
	=	PQ_or_nPnQ or nQnR
	;
	auto constexpr inline
		PQ_or_nPnQ_or_nPnR
	=	PQ_or_nPnQ or nPnR
	;

	auto constexpr inline
		PnQ_or_PnR_or_nPQ
	=	PnQ_or_PnR or nPQ
	;

	auto constexpr inline
		PR_or_nPnQ_or_nPnR
	=	PR_or_nPnQ or nPnR
	;
}
