export module Test.Meta.Logic.Cache.PQ_or_R;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;

export
{
	auto constexpr inline
		PQ_or_R
	=	PQ or R
	;
	auto constexpr inline
		PQ_or_nR
	=	PQ or nR
	;
	auto constexpr inline
		PnQ_or_R
	=	PnQ or R
	;
	auto constexpr inline
		PnQ_or_nR
	=	PnQ or nR
	;

	auto constexpr inline
		PR_or_Q
	=	PR or Q
	;
	auto constexpr inline
		PR_or_nQ
	=	PR or nQ
	;
	auto constexpr inline
		PnR_or_Q
	=	PnR or Q
	;
	auto constexpr inline
		PnR_or_nQ
	=	PnR or nQ
	;

	auto constexpr inline
		P_or_QR
	=	P or QR
	;
	auto constexpr inline
		P_or_QnR
	=	P or QnR
	;
	auto constexpr inline
		P_or_nQR
	=	P or nQR
	;
	auto constexpr inline
		P_or_nQnR
	=	P or nQnR
	;

	auto constexpr inline
		nPQ_or_R
	=	nPQ or R
	;
	auto constexpr inline
		nPQ_or_nR
	=	nPQ or nR
	;
	auto constexpr inline
		nPnQ_or_R
	=	nPnQ or R
	;
	auto constexpr inline
		nPnQ_or_nR
	=	nPnQ or nR
	;

	auto constexpr inline
		nPR_or_Q
	=	nPR or Q
	;
	auto constexpr inline
		nPR_or_nQ
	=	nPR or nQ
	;
	auto constexpr inline
		nPnR_or_Q
	=	nPnR or Q
	;
	auto constexpr inline
		nPnR_or_nQ
	=	nPnR or nQ
	;

	auto constexpr inline
		nP_or_QR
	=	nP or QR
	;
	auto constexpr inline
		nP_or_QnR
	=	nP or QnR
	;
	auto constexpr inline
		nP_or_nQR
	=	nP or nQR
	;
	auto constexpr inline
		nP_or_nQnR
	=	nP or nQnR
	;
}
