import Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR_nQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Negation;

///	********************************************************
///	PQR_PnQnR_nPQnR
///	********************************************************
static_assert
(	not
	PQR_PnQnR_nPQnR
==	PQnR_nPnQ_nPR_nQR
);
