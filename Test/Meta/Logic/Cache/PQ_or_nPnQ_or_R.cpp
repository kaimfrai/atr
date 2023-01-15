export module Test.Meta.Logic.Cache.PQ_or_nPnQ_or_R;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_R;
import Test.Meta.Logic.Cache.PQ_or_nPnQ;

export
{
	auto constexpr inline
		PQ_or_nPnQ_or_R
	=	PQ_or_nPnQ or R
	;
	auto constexpr inline
		PQ_or_nPnQ_or_nR
	=	PQ_or_nPnQ or nR
	;

	auto constexpr inline
		PnQ_or_nPQ_or_R
	=	PnQ_or_nPQ or R
	;
	auto constexpr inline
		PnQ_or_nPQ_or_nR
	=	PnQ_or_nPQ or nR
	;

	auto constexpr inline
		PR_or_nPnR_or_Q
	=	PR_or_nPnR or Q
	;
	auto constexpr inline
		PR_or_nPnR_or_nQ
	=	PR_or_nPnR or nQ
	;

	auto constexpr inline
		PnR_or_nPR_or_Q
	=	PnR_or_nPR or Q
	;
	auto constexpr inline
		PnR_or_nPR_or_nQ
	=	PnR_or_nPR or nQ
	;

	auto constexpr inline
		P_or_QR_or_nQnR
	=	P_or_QR or nQnR
	;
	auto constexpr inline
		P_or_QnR_or_nQR
	=	P_or_QnR or nQR
	;

	auto constexpr inline
		nP_or_QR_or_nQnR
	=	nP_or_QR or nQnR
	;

	auto constexpr inline
		nP_or_nQR_or_QnR
	=	nP_or_nQR or QnR
	;
}
