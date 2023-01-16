import Test.Meta.Logic.Cache.PQR_nPnQ;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQR_nPnQ
///	********************************************************
static_assert
(	(PQR or nPnQ)
==	PQR_nPnQ
);
static_assert
(	(nPnQ or PQR)
==	PQR_nPnQ
);
