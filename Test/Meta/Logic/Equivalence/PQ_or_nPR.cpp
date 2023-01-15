import Test.Meta.Logic.Cache.PQ_nPR;

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
