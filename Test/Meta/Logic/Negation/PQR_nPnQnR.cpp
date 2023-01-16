import Test.Meta.Logic.Cache.PQR_nPnQnR;
import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Negation;

///	********************************************************
///	PQR_nPnQnR
///	********************************************************
static_assert
(	not
	PQR_nPnQnR
==	PnQ_nPR_QnR
);
