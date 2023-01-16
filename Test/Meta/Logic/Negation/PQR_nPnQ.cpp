import Test.Meta.Logic.Cache.PQR_nPnQ;
import Test.Meta.Logic.Cache.PQ_PR_nPnQ;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Negation;

///	********************************************************
///	PQR_nPnQ
///	********************************************************
static_assert
(	not
	PQR_nPnQ
==	PnQ_PnR_nPQ
);
