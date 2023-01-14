import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	(	T
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	F
	and	(PnR_or_nPnQ_or_QR)
	)
==	F
);

static_assert
(	(	P
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_PnR)
);
static_assert
(	(	nP
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPR	or	nPnQ)
);

static_assert
(	(	Q
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_QR)
);
static_assert
(	(	nQ
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPnQ	or	nQnR)
);

static_assert
(	(	R
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPR	or	QR)
);
static_assert
(	(	nR
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PnR	or	nQnR)
);

static_assert
(	(	(PQ)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PQnR)
);

static_assert
(	(	(PnQ)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PnQnR)
);
static_assert
(	(	(PnQR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	F
);
static_assert
(	(	(PnQnR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PnQnR)
);

static_assert
(	(	(PR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PQR)
);
static_assert
(	(	(PnR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PnR)
);

static_assert
(	(	(nPQ)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPQR)
);
static_assert
(	(	(nPQR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPQR)
);
static_assert
(	(	(nPQnR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	F
);

static_assert
(	(	(nPnQ)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPnQ)
);
static_assert
(	(	(nPnQR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQnR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPnQnR)
);

static_assert
(	(	(nPR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPR)
);
static_assert
(	(	(nPnR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPnQnR)
);

static_assert
(	(	(nQR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nPnQR)
);
static_assert
(	(	(nQnR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(nQnR)
);

static_assert
(	(	(QR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(QR)
);
static_assert
(	(	(QnR)
	and	(PnR_or_nPnQ_or_QR)
	)
==	(PQnR)
);
