import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.PQR_nPnQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Negation;

///	********************************************************
///	PQ_nPR_nQnR
///	PnR_nPnQ_QR
///	********************************************************
static_assert
(	not
	PQ_nPR_nQnR
==	PnQR_nPQnR
);
