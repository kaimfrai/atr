import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_PR_or_nPnQ)
///	(PQ_or_nPnQ_or_nQR)
///	********************************************************
static_assert
(	not
	(PQ_or_nPnQ_or_nQR)
==	(PnQnR	or	nPQ)
);
static_assert
(	not
	(PQ_or_nQR	or	nPnQ)
==	(PnQnR	or	nPQ)
);

static_assert
(	not
	(nPnQ	or	PQ_or_nQR)
==	(PnQnR	or	nPQ)
);
static_assert
(	not
	(nPnQ	or	nQR	or	PQ)
==	(PnQnR	or	nPQ)
);

static_assert
(	not
	(nQR	or	PQ_or_nPnQ)
==	(PnQnR	or	nPQ)
);
static_assert
(	not
	(nQR	or	nPnQ	or	PQ)
==	(PnQnR	or	nPQ)
);
