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
		PQ_or_nPnR_or_nQR
	=	PQ_or_nPnR or nQR
	;

	auto constexpr inline
		PnQ_or_nPR_or_QnR
	=	PnQ_or_nPR or QnR
	;

	auto constexpr inline
		PR_or_nPnQ_or_QnR
	=	PR_or_nPnQ or QnR
	;
	auto constexpr inline
		PnR_or_nPnQ_or_QR
	=	PnR_or_nPnQ or QR
	;
}
