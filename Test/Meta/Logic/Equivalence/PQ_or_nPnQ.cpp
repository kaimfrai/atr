import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPnQ)
///	********************************************************
static_assert
(	(PQ or nPnQ)
==	PQ_or_nPnQ
);
static_assert
(	(nPnQ or PQ)
==	PQ_or_nPnQ
);
