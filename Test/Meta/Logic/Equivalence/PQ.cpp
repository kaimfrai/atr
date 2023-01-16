import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Conjunction;

///	********************************************************
///	PQ
///	********************************************************
static_assert
(	(P and Q)
==	PQ
);
static_assert
(	(Q and P)
==	PQ
);
