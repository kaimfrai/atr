import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQ_or_PR_or_nPnQ)
///	(PQ_or_nPnQ_or_nQR)
/// ************************************************************************************************
static_assert
(	not
	(PQ_or_PR_or_nPnQ)
==	(PnQnR	or	nPQ)
);
static_assert
(	not
	(PQ_or_nPnQ	or	PR)
==	(PnQnR	or	nPQ)
);

static_assert
(	not
	(PR	or	PQ_or_nPnQ)
==	(PnQnR	or	nPQ)
);
static_assert
(	not
	(PR	or	nPnQ	or	PQ)
==	(PnQnR	or	nPQ)
);

static_assert
(	not
	(nPnQ	or	PQ_or_PR)
==	(PnQnR	or	nPQ)
);
static_assert
(	not
	(nPnQ	or	PR	or	PQ)
==	(PnQnR	or	nPQ)
);
