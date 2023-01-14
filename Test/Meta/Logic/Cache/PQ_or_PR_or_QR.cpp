export module Test.Meta.Logic.Cache.PQ_or_PR_or_QR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_PR;

export
{
	auto constexpr inline
		PQ_or_PR_or_QR
	=	PQ_or_PR or QR
	;
	auto constexpr inline
		PQ_or_PnR_or_QnR
	=	PQ_or_PnR or QnR
	;

	auto constexpr inline
		PnQ_or_PR_or_nQR
	=	PnQ_or_PR or nQR
	;

	auto constexpr inline
		nPnQ_or_nPnR_or_nQnR
	=	nPnQ_or_nPnR or nQnR
	;

}
