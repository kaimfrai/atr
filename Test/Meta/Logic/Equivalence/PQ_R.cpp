import Test.Meta.Logic.Cache.PQ_R;

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
