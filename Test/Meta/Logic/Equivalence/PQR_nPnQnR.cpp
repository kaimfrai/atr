import Test.Meta.Logic.Cache.PQR_nPnQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQR_nPnQnR
///	********************************************************
static_assert
(	(PQR or nPnQnR)
==	PQR_nPnQnR
);
static_assert
(	(nPnQnR or PQR)
==	PQR_nPnQnR
);
