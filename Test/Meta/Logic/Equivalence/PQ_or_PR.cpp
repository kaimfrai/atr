import Test.Meta.Logic.Cache.PQ_or_PR;

///	********************************************************
///	PQ_or_PR
///	********************************************************
static_assert
(	(PQ or PR)
==	PQ_or_PR
);
static_assert
(	(PR or PQ)
==	PQ_or_PR
);
