import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	(PQ_or_nPR_or_nQnR)
==	(PnR_or_nPnQ_or_QR)
);
static_assert
(	(PQ_or_nPR_or_nQnR)
==	(PnR	or	QR	or	nPnQ)
);

static_assert
(	(PQ_or_nPR_or_nQnR)
==	(nPnQ	or	PnR	or	QR)
);
static_assert
(	(PQ_or_nPR_or_nQnR)
==	(nPnQ	or	QR	or	PnR)
);

static_assert
(	(PQ_or_nPR_or_nQnR)
==	(QR	or	PnR_or_nPnQ)
);
static_assert
(	(PQ_or_nPR_or_nQnR)
==	(QR	or	nPnQ	or	PnR)
);
