import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.PQR_PnQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Negation;

///	********************************************************
///	PQ_nPnQ_R
///	********************************************************
static_assert
(	not
	PQ_nPnQ_R
==	PnQnR_nPQnR
);
