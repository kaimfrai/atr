export module Test.Meta.Logic.Data;

export import Test.Meta.Logic.Term;
export import Test.Meta.Logic.Cache.Constant;
export import Test.Meta.Logic.Cache.Literal;
export import Test.Meta.Logic.Cache.P_or_Q;
export import Test.Meta.Logic.Cache.P_or_Q_or_R;
export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQ_or_R;
export import Test.Meta.Logic.Cache.PQ_or_PR;
export import Test.Meta.Logic.Cache.PQ_or_nPnQ;
export import Test.Meta.Logic.Cache.PQ_or_nPR;
export import Test.Meta.Logic.Cache.PQR;

export
{
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
		PQ_or_nPR_or_nQnR
	=	PQ_or_nPR or nQnR
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
}
