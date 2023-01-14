import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQR_or_nPnQ)
/// ************************************************************************************************
static_assert
(	(	T
	or	(PQR_or_nPnQ)
	)
==	T
);
static_assert
(	(	F
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ)
);

static_assert
(	(	P
	or	(PQR_or_nPnQ)
	)
==	(P_or_nQ)
);
static_assert
(	(	nP
	or	(PQR_or_nPnQ)
	)
==	(nP_or_QR)
);

static_assert
(	(	Q
	or	(PQR_or_nPnQ)
	)
==	(nP_or_Q)
);
static_assert
(	(	nQ
	or	(PQR_or_nPnQ)
	)
==	(PR	or	nQ)
);

static_assert
(	(	R
	or	(PQR_or_nPnQ)
	)
==	(nPnQ	or	R)
);
static_assert
(	(	nR
	or	(PQR_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	nR)
);

static_assert
(	(	(PQ)
	or	(PQR_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);
static_assert
(	(	(PQR)
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ)
);
static_assert
(	(	(PQnR)
	or	(PQR_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);

static_assert
(	(	(PnQ)
	or	(PQR_or_nPnQ)
	)
==	(PR	or	nQ)
);
static_assert
(	(	(PnQR)
	or	(PQR_or_nPnQ)
	)
==	(PR	or	nPnQ)
);
static_assert
(	(	(PnQnR)
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ	or	nQnR)
);

static_assert
(	(	(PR)
	or	(PQR_or_nPnQ)
	)
==	(PR	or	nPnQ)
);
static_assert
(	(	(PnR)
	or	(PQR_or_nPnQ)
	)
==	(PQ_or_PnR_or_nPnQ)
);

static_assert
(	(	(nPQ)
	or	(PQR_or_nPnQ)
	)
==	(nP_or_QR)
);
static_assert
(	(	(nPQR)
	or	(PQR_or_nPnQ)
	)
==	(nPnQ	or	QR)
);
static_assert
(	(	(nPQnR)
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ_or_nPnR)
);

static_assert
(	(	(nPnQ)
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ)
);
static_assert
(	(	(nPnQR)
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ)
);
static_assert
(	(	(nPnQnR)
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ)
);

static_assert
(	(	(nPR)
	or	(PQR_or_nPnQ)
	)
==	(nPnQ	or	QR)
);
static_assert
(	(	(nPnR)
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ_or_nPnR)
);

static_assert
(	(	(QR)
	or	(PQR_or_nPnQ)
	)
==	(nPnQ	or	QR)
);
static_assert
(	(	(QnR)
	or	(PQR_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	QnR)
);

static_assert
(	(	(nQR)
	or	(PQR_or_nPnQ)
	)
==	(PR	or	nPnQ)
);
static_assert
(	(	(nQnR)
	or	(PQR_or_nPnQ)
	)
==	(PQR_or_nPnQ	or	nQnR)
);
