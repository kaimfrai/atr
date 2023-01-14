import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	(PQ_or_nPR_or_nQnR)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(PQ_or_nPR_or_nQnR)
==	(PQ_or_nQnR	or	nPR)
);

static_assert
(	(PQ_or_nPR_or_nQnR)
==	(nPR	or	PQ_or_nQnR)
);
static_assert
(	(PQ_or_nPR_or_nQnR)
==	(nPR	or	nQnR	or	PQ)
);

static_assert
(	(PQ_or_nPR_or_nQnR)
==	(nQnR	or	PQ_or_nPR)
);
static_assert
(	(PQ_or_nPR_or_nQnR)
==	(nQnR	or	nPR	or	PQ)
);
