import Test.Meta.Logic.Cache.PQ_or_nPnQ_or_R;

///	********************************************************
///	PQ_or_nPnQ_or_R
///	********************************************************
static_assert
(	(PQ or nPnQ or R)
==	PQ_or_nPnQ_or_R
);
static_assert
(	(PQ or R or nPnQ)
==	PQ_or_nPnQ_or_R
);

static_assert
(	(nPnQ or PQ or R)
==	PQ_or_nPnQ_or_R
);
static_assert
(	(nPnQ or R or PQ)
==	PQ_or_nPnQ_or_R
);

static_assert
(	(R or PQ or nPnQ)
==	PQ_or_nPnQ_or_R
);
static_assert
(	(R or nPnQ or PQ)
==	PQ_or_nPnQ_or_R
);
