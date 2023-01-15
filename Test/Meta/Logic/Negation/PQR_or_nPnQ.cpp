import Test.Meta.Logic.Cache.PQR_or_nPnQ;
import Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;

///	********************************************************
///	PQR_or_nPnQ
///	********************************************************
static_assert
(	not
	PQR_or_nPnQ
==	PnQ_or_PnR_or_nPQ
);
