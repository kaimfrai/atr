import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_PR_or_nPnQ)
///	(PQ_or_nPnQ_or_nQR)
///	********************************************************
static_assert
(	(PQ_or_PR_or_nPnQ)
==	(PQ_or_nPnQ_or_nQR)
);
static_assert
(	(PQ_or_PR_or_nPnQ)
==	(PQ_or_nQR	or	nPnQ)
);

static_assert
(	(PQ_or_PR_or_nPnQ)
==	(nPnQ	or	PQ_or_nQR)
);
static_assert
(	(PQ_or_PR_or_nPnQ)
==	(nPnQ	or	nQR	or	PQ)
);

static_assert
(	(PQ_or_PR_or_nPnQ)
==	(nQR	or	PQ_or_nPnQ)
);
static_assert
(	(PQ_or_PR_or_nPnQ)
==	(nQR	or	nPnQ	or	PQ)
);
