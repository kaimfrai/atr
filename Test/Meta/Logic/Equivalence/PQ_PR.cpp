import Test.Meta.Logic.Cache.PQ_PR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_PR
///	********************************************************
static_assert
(	(PQ or PR)
==	PQ_PR
);
static_assert
(	(PR or PQ)
==	PQ_PR
);
