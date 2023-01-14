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
		PQ_or_PnR
	=	PQ or PnR
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
		PnQ_or_PR
	=	PnQ or PR
	;
	auto constexpr inline
		PnQ_or_PnR
	=	PnQ or PnR
	;
	auto constexpr inline
		PnQ_or_nQR
	=	PnQ or nQR
	;
	auto constexpr inline
		PnQ_or_nQnR
	=	PnQ or nQnR
	;

	auto constexpr inline
		PR_or_QR
	=	PR or QR
	;
	auto constexpr inline
		PR_or_nQR
	=	PR or nQR
	;

	auto constexpr inline
		PnR_or_QnR
	=	PnR or QnR
	;
	auto constexpr inline
		PnR_or_nQnR
	=	PnR or nQnR
	;

	auto constexpr inline
		nPQ_or_nPR
	=	nPQ or nPR
	;
	auto constexpr inline
		nPQ_or_nPnR
	=	nPQ or nPnR
	;

	auto constexpr inline
		nPQ_or_QR
	=	nPQ or QR
	;
	auto constexpr inline
		nPQ_or_QnR
	=	nPQ or QnR
	;

	auto constexpr inline
		nPnQ_or_nPR
	=	nPnQ or nPR
	;
	auto constexpr inline
		nPnQ_or_nPnR
	=	nPnQ or nPnR
	;
	auto constexpr inline
		nPnQ_or_nQR
	=	nPnQ or nQR
	;
	auto constexpr inline
		nPnQ_or_nQnR
	=	nPnQ or nQnR
	;

	auto constexpr inline
		nPR_or_QR
	=	nPR or QR
	;
	auto constexpr inline
		nPR_or_nQR
	=	nPR or nQR
	;

	auto constexpr inline
		nPnR_or_QnR
	=	nPnR or QnR
	;
	auto constexpr inline
		nPnR_or_nQnR
	=	nPnR or nQnR
	;
}
