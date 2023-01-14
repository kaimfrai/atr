import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_PnQnR)
///	********************************************************
static_assert
(	(	T
	or	(PQR_or_PnQnR)
	)
==	T
);
static_assert
(	(	F
	or	(PQR_or_PnQnR)
	)
==	(PQR_or_PnQnR)
);

static_assert
(	(	P
	or	(PQR_or_PnQnR)
	)
==	P
);
static_assert
(	(	nP
	or	(PQR_or_PnQnR)
	)
==	(nP_or_QR	or	nQnR)
);

static_assert
(	(	Q
	or	(PQR_or_PnQnR)
	)
==	(PnR	or	Q)
);
static_assert
(	(	nQ
	or	(PQR_or_PnQnR)
	)
==	(PR	or	nQ)
);

static_assert
(	(	R
	or	(PQR_or_PnQnR)
	)
==	(PnQ	or	R)
);
static_assert
(	(	nR
	or	(PQR_or_PnQnR)
	)
==	(PQ_or_nR)
);

static_assert
(	(	(PQ)
	or	(PQR_or_PnQnR)
	)
==	(PQ_or_PnR)
);
static_assert
(	(	(PQR)
	or	(PQR_or_PnQnR)
	)
==	(PQR_or_PnQnR)
);
static_assert
(	(	(PQnR)
	or	(PQR_or_PnQnR)
	)
==	(PQ_or_PnR)
);

static_assert
(	(	(PR)
	or	(PQR_or_PnQnR)
	)
==	(PR	or	PnQ)
);
static_assert
(	(	(PnR)
	or	(PQR_or_PnQnR)
	)
==	(PQ_or_PnR)
);

static_assert
(	(	(PnQ)
	or	(PQR_or_PnQnR)
	)
==	(PnQ	or	PR)
);
static_assert
(	(	(PnQR)
	or	(PQR_or_PnQnR)
	)
==	(PnQ	or	PR)
);
static_assert
(	(	(PnQnR)
	or	(PQR_or_PnQnR)
	)
==	(PQR_or_PnQnR)
);

static_assert
(	(	(nPQ)
	or	(PQR_or_PnQnR)
	)
==	(PnQnR	or	nPQ_or_QR)
);
static_assert
(	(	(nPQR)
	or	(PQR_or_PnQnR)
	)
==	(PnQnR	or	QR)
);
static_assert
(	(	(nPQnR)
	or	(PQR_or_PnQnR)
	)
==	(PQR_or_PnQnR_or_nPQnR)
);

static_assert
(	(	(nPnQ)
	or	(PQR_or_PnQnR)
	)
==	(PQR_or_nPnQ	or	nQnR)
);
static_assert
(	(	(nPnQR)
	or	(PQR_or_PnQnR)
	)
==	(PQR_or_PnQnR	or	nPnQR)
);
static_assert
(	(	(nPnQnR)
	or	(PQR_or_PnQnR)
	)
==	(PQR	or	nQnR)
);

static_assert
(	(	(nPR)
	or	(PQR_or_PnQnR)
	)
==	(PnQnR	or	nPR	or	QR)
);
static_assert
(	(	(nPnR)
	or	(PQR_or_PnQnR)
	)
==	(PQR	or	nPnR	or	nQnR)
);

static_assert
(	(	(QR)
	or	(PQR_or_PnQnR)
	)
==	(PnQnR	or	QR)
);
static_assert
(	(	(QnR)
	or	(PQR_or_PnQnR)
	)
==	(PQ_or_PnR	or	QnR)
);
static_assert
(	(	(nQR)
	or	(PQR_or_PnQnR)
	)
==	(PnQ	or	PR	or	nQR)
);
static_assert
(	(	(nQnR)
	or	(PQR_or_PnQnR)
	)
==	(PQR	or	nQnR)
);
