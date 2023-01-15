import Test.Meta.Logic.Cache.PQ_PR_nPnQ;
import Test.Meta.Logic.Cache.PQR_nPnQ;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Negation;

///	********************************************************
///	PQ_PR_nPnQ
///	PQ_nPnQ_nQR
///	********************************************************
static_assert
(	not
	PQ_nPnQ_nQR
==	PnQnR_nPQ
);
