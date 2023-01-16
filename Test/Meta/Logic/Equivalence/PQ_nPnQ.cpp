import Test.Meta.Logic.Cache.PQ_nPnQ;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_nPnQ
///	********************************************************
static_assert
(	(PQ or nPnQ)
==	PQ_nPnQ
);
static_assert
(	(nPnQ or PQ)
==	PQ_nPnQ
);
