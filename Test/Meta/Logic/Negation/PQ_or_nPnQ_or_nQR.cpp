import Test.Meta.Logic.Data;

///	********************************************************
///	PQ_or_PR_or_nPnQ
///	PQ_or_nPnQ_or_nQR
///	********************************************************
static_assert
(	not
	PQ_or_nPnQ_or_nQR
==	PnQnR_or_nPQ
);
