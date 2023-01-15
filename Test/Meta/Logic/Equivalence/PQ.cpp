import Test.Meta.Logic.Cache.PQ;

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
