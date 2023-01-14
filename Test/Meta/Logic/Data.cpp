export module Test.Meta.Logic.Data;

export import Test.Meta.Logic.Term;
export import Test.Meta.Logic.Cache.Constant;
export import Test.Meta.Logic.Cache.Literal;
export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQR;

export
{
	auto constexpr inline
		PQ_or_nR
	=	PQ or nR
	;
	auto constexpr inline
		nPQ_or_QR
	=	nPQ or QR
	;
	auto constexpr inline
		PQ_or_nPnR
	=	PQ or nPnR
	;
	auto constexpr inline
		PQ_or_PnR
	=	PQ or PnR
	;
	auto constexpr inline
		PQ_or_PnR_or_nPnQ
	=	PQ_or_PnR or nPnQ
	;
	auto constexpr inline
		nPQ_or_PnQnR
	=	nPQ or PnQnR
	;
	auto constexpr inline
		PQ_or_PnR_or_nPnQR
	=	PQ_or_PnR or nPnQR
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
		PQ_or_nQR
	=	PQ or nQR
	;
	auto constexpr inline
		PQ_or_nQnR
	=	PQ or nQnR
	;

	auto constexpr inline
		PnR_or_nPnQ
	=	PnR or nPnQ
	;
	auto constexpr inline
		nPnR_or_nPnQ
	=	nPnR or nPnQ
	;
	auto constexpr inline
		PnR_or_nPnQR
	=	PnR or nPnQR
	;
	auto constexpr inline
		nPnR_or_nPnQR
	=	nPnR or nPnQR
	;
	auto constexpr inline
		PnR_or_nPnQ_or_QR
	=	PnR_or_nPnQ or QR
	;
	auto constexpr inline
		PQR_or_nPnQ
	=	PQR or nPnQ
	;
	auto constexpr inline
		PQR_or_nPnQR
	=	PQR or nPnQR
	;
	auto constexpr inline
		PQR_or_nPnQnR
	=	PQR or nPnQnR
	;
	auto constexpr inline
		nPQR_or_nPnQnR
	=	nPQR or nPnQnR
	;
	auto constexpr inline
		PQR_or_nPnQ_or_nPnR
	=	PQR_or_nPnQ or nPnR
	;
	auto constexpr inline
		PQR_or_nPnQ_or_nPnR_or_nQnR
	=	PQR_or_nPnQ_or_nPnR or nQnR
	;
	auto constexpr inline
		PQR_or_PnQnR
	=	PQR or PnQnR
	;
	auto constexpr inline
		PQR_or_PnQnR_or_nPQnR
	=	PQR_or_PnQnR or nPQnR
	;
	auto constexpr inline
		PQR_or_PnQnR_or_nPQnR_or_nPnQR
	=	PQR_or_PnQnR_or_nPQnR or nPnQR
	;
	auto constexpr inline
		PQ_or_nPnQ
	=	PQ or nPnQ
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
		PQ_or_nPnQ_or_nQR
	=	PQ_or_nPnQ or nQR
	;
	auto constexpr inline
		PQ_or_nPnQ_or_R
	=	PQ_or_nPnQ or R
	;
	auto constexpr inline
		PQ_or_nPR
	=	PQ or nPR
	;
	auto constexpr inline
		nPQ_or_nPR
	=	nPQ or nPR
	;
	auto constexpr inline
		PQ_or_nPR_or_nQnR
	=	PQ_or_nPR or nQnR
	;
	auto constexpr inline
		PQ_or_PR
	=	PQ or PR
	;
	auto constexpr inline
		PQ_or_PR_or_nPnQ
	=	PQ_or_PR or nPnQ
	;
	auto constexpr inline
		PQ_or_PR_or_nPnQnR
	=	PQ_or_PR or nPnQnR
	;
	auto constexpr inline
		PQ_or_PR_or_QR
	=	PQ_or_PR or QR
	;
	auto constexpr inline
		PQ_or_R
	=	PQ or R
	;
	auto constexpr inline
		nPQ_or_R
	=	nPQ or R
	;
	auto constexpr inline
		P_or_Q
	=	P or Q
	;
	auto constexpr inline
		P_or_nQ
	=	P or nQ
	;
	auto constexpr inline
		P_or_R
	=	P or R
	;
	auto constexpr inline
		P_or_nR
	=	P or nR
	;
	auto constexpr inline
		nP_or_R
	=	nP or R
	;
	auto constexpr inline
		nP_or_nR
	=	nP or nR
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
		nP_or_nQ
	=	nP or nQ
	;
	auto constexpr inline
		nP_or_nQR
	=	nP or nQR
	;
	auto constexpr inline
		nP_or_nQnR
	=	nP or nQnR
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
		nP_or_Q
	=	nP or Q
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
		P_or_Q_or_R
	=	P_or_Q or R
	;
	auto constexpr inline
		nP_or_Q_or_R
	=	nP_or_Q or R
	;
}
