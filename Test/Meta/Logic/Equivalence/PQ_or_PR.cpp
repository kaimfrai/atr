import Test.Meta.Logic.Cache.PQ_PR;

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
