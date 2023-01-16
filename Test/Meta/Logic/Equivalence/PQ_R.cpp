import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_R
///	********************************************************
static_assert
(	(PQ or R)
==	PQ_R
);
static_assert
(	(R or PQ)
==	PQ_R
);
