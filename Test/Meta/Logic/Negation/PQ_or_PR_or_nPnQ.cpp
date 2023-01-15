import Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;
import Test.Meta.Logic.Cache.PQR_or_nPnQ;

///	********************************************************
///	PQ_or_PR_or_nPnQ
///	PQ_or_nPnQ_or_nQR
///	********************************************************
static_assert
(	not
	PQ_or_PR_or_nPnQ
==	PnQnR_or_nPQ
);
