import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_R)
///	********************************************************
static_assert
(	(PQ or R)
==	PQ_or_R
);
static_assert
(	(R or PQ)
==	PQ_or_R
);
