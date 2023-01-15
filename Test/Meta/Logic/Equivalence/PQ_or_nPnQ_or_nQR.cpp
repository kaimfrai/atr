import Test.Meta.Logic.Data;

///	********************************************************
///	PQ_or_PR_or_nPnQ
///	PQ_or_nPnQ_or_nQR
///	********************************************************
static_assert
(	(PQ or nPnQ or nQR)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(PQ or nQR or nPnQ)
==	PQ_or_PR_or_nPnQ
);

static_assert
(	(nPnQ or PQ or nQR)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(nPnQ or nQR or PQ)
==	PQ_or_PR_or_nPnQ
);

static_assert
(	(nQR or PQ or nPnQ)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(nQR or nPnQ or PQ)
==	PQ_or_PR_or_nPnQ
);
