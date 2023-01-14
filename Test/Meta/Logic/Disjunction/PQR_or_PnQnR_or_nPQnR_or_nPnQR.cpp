import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	T
);
static_assert
(	(	F
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
);

static_assert
(	(	P
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(P_or_QnR	or	nQR)
);
static_assert
(	(	nP
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nP_or_QR	or	nQnR)
);

static_assert
(	(	Q
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnR	or	nPR	or	Q)
);
static_assert
(	(	nQ
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PR	or	nPnR	or	nQ)
);

static_assert
(	(	R
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQ	or	nPQ_or_R)
);
static_assert
(	(	nR
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQ_or_nPnQ	or	nR)
);

static_assert
(	(	(PQ)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQ_or_PnR_or_nPnQR	or	QnR)
);
static_assert
(	(	(PQR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
);
static_assert
(	(	(PQnR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQ_or_PnR_or_nPnQR	or	QnR	)
);

static_assert
(	(	(PR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQ	or	PR	or	nPQnR	or	nQR)
);
static_assert
(	(	(PnR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQ_or_PnR_or_nPnQR	or	QnR)
);

static_assert
(	(	(PnQ)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQ	or	PR	or	nPQnR	or	nQR)
);
static_assert
(	(	(PnQR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQ	or	PR	or	nPQnR	or	nQR)
);
static_assert
(	(	(PnQnR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
);

static_assert
(	(	(nPQ)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR	or	nPQ_or_nPR	or	QR)
);
static_assert
(	(	(nPQR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR	or	nPQ_or_nPR	or	QR)
);
static_assert
(	(	(nPQnR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
);

static_assert
(	(	(nPnQ)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);
static_assert
(	(	(nPnQR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
);
static_assert
(	(	(nPnQnR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);

static_assert
(	(	(nPR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR	or	nPQ_or_nPR	or	QR)
);
static_assert
(	(	(nPnR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);

static_assert
(	(	(QR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR	or	nPQ_or_nPR	or	QR)
);
static_assert
(	(	(QnR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQ_or_PnR_or_nPnQR	or	QnR)
);
static_assert
(	(	(nQR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQ	or	PR	or	nPQnR	or	nQR)
);
static_assert
(	(	(nQnR)
	or	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);