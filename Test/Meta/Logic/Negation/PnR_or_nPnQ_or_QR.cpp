import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	not
	(PnR_or_nPnQ_or_QR)
==	(PnQR	or	nPQnR)
);
static_assert
(	not
	(PnR	or	QR	or	nPnQ)
==	(PnQR	or	nPQnR)
);

static_assert
(	not
	(nPnQ	or	PnR	or	QR)
==	(PnQR	or	nPQnR)
);
static_assert
(	not
	(nPnQ	or	QR	or	PnR)
==	(PnQR	or	nPQnR)
);

static_assert
(	not
	(QR	or	PnR_or_nPnQ)
==	(PnQR	or	nPQnR)
);
static_assert
(	not
	(QR	or	nPnQ	or	PnR)
==	(PnQR	or	nPQnR)
);
