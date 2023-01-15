import Test.Meta.Logic.Cache.PQ_or_R;

///	********************************************************
///	PQ_or_R
///	********************************************************
static_assert
(	(PQ or R)
==	PQ_or_R
);
static_assert
(	(R or PQ)
==	PQ_or_R
);
