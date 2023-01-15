import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Negation;

///	********************************************************
///	PQR_nPnQ_nPnR
///	********************************************************
static_assert
(	not
	PQR_nPnQ_nPnR
==	PnQ_PnR_nPQR
);
