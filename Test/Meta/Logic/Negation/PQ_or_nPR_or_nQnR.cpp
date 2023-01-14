import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	not
	(PQ_or_nPR_or_nQnR)
==	(PnQR	or	nPQnR)
);
static_assert
(	not
	(PQ_or_nQnR	or	nPR)
==	(PnQR	or	nPQnR)
);

static_assert
(	not
	(nPR	or	PQ_or_nQnR)
==	(PnQR	or	nPQnR)
);
static_assert
(	not
	(nPR	or	nQnR	or	PQ)
==	(PnQR	or	nPQnR)
);

static_assert
(	not
	(nQnR	or	PQ_or_nPR)
==	(PnQR	or	nPQnR)
);
static_assert
(	not
	(nQnR	or	nPR	or	PQ)
==	(PnQR	or	nPQnR)
);
