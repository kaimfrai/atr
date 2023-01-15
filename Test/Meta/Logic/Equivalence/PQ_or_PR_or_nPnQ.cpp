import Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;

///	********************************************************
///	PQ_or_PR_or_nPnQ
///	PQ_or_nPnQ_or_nQR
///	********************************************************
static_assert
(	(PQ or PR or nPnQ)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(PQ or nPnQ or PR)
==	PQ_or_PR_or_nPnQ
);

static_assert
(	(PR or PQ or nPnQ)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(PR or nPnQ or PQ)
==	PQ_or_PR_or_nPnQ
);

static_assert
(	(nPnQ or PQ or PR)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(nPnQ or PR or PQ)
==	PQ_or_PR_or_nPnQ
);
