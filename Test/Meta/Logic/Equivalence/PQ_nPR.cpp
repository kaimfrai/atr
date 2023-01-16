import Test.Meta.Logic.Cache.PQ_nPR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_nPR
///	********************************************************
static_assert
(	(PQ or nPR)
==	PQ_nPR
);
static_assert
(	(nPR or PQ)
==	PQ_nPR
);
