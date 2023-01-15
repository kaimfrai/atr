import Test.Meta.Logic.Cache.PQ_PR_nPnQ;

///	********************************************************
///	PQ_PR_nPnQ
///	PQ_nPnQ_nQR
///	********************************************************
static_assert
(	(PQ or PR or nPnQ)
==	PQ_PR_nPnQ
);
static_assert
(	(PQ or nPnQ or PR)
==	PQ_PR_nPnQ
);

static_assert
(	(PR or PQ or nPnQ)
==	PQ_PR_nPnQ
);
static_assert
(	(PR or nPnQ or PQ)
==	PQ_PR_nPnQ
);

static_assert
(	(nPnQ or PQ or PR)
==	PQ_PR_nPnQ
);
static_assert
(	(nPnQ or PR or PQ)
==	PQ_PR_nPnQ
);
