import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR_nQnR;
import Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Negation;

///	********************************************************
///	PQR_nPnQ_nPnR_nQnR
///	********************************************************
static_assert
(	not
	PQR_nPnQ_nPnR_nQnR
==	PQnR_PnQR_nPQR
);
