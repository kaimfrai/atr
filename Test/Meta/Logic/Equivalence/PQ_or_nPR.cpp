import Test.Meta.Logic.Cache.PQ_or_nPR;

///	********************************************************
///	PQ_or_nPR
///	********************************************************
static_assert
(	(PQ or nPR)
==	PQ_or_nPR
);
static_assert
(	(nPR or PQ)
==	PQ_or_nPR
);
