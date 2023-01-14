import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_PR_or_QR)
///	********************************************************
static_assert
(	not
	(PQ_or_PR_or_QR)
==	(nPnQ	or	nPnR	or	nQnR)
);
static_assert
(	not
	(PQ_or_QR	or	PR)
==	(nPnQ	or	nPnR	or	nQnR)
);

static_assert
(	not
	(PR	or	PQ_or_QR)
==	(nPnQ	or	nPnR	or	nQnR)
);
static_assert
(	not
	(PR	or	QR	or	PQ)
==	(nPnQ	or	nPnR	or	nQnR)
);

static_assert
(	not
	(QR	or	PQ_or_PR)
==	(nPnQ	or	nPnR	or	nQnR)
);
static_assert
(	not
	(QR	or	PR	or	PQ)
==	(nPnQ	or	nPnR	or	nQnR)
);
