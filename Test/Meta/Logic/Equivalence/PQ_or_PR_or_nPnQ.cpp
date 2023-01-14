import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_PR_or_nPnQ)
///	(PQ_or_nPnQ_or_nQR)
///	********************************************************
static_assert
(	(PQ_or_PR_or_nPnQ)
==	(PQ_or_PR_or_nPnQ)
);
static_assert
(	(PQ_or_PR_or_nPnQ)
==	(PQ_or_nPnQ	or	PR)
);

static_assert
(	(PQ_or_PR_or_nPnQ)
==	(PR	or	PQ_or_nPnQ)
);
static_assert
(	(PQ_or_PR_or_nPnQ)
==	(PR	or	nPnQ	or	PQ)
);

static_assert
(	(PQ_or_PR_or_nPnQ)
==	(nPnQ	or	PQ_or_PR)
);
static_assert
(	(PQ_or_PR_or_nPnQ)
==	(nPnQ	or	PR	or	PQ)
);
