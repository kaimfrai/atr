import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	(	T
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	F
	and	(PQ_or_nPR_or_nQnR)
	)
==	F
);

static_assert
(	(	P
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_PnR)
);
static_assert
(	(	nP
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPR	or	nPnQ)
);

static_assert
(	(	Q
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_QR)
);
static_assert
(	(	nQ
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPnQ	or	nQnR)
);

static_assert
(	(	R
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPR	or	QR)
);
static_assert
(	(	nR
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PnR	or	nQnR)
);

static_assert
(	(	(PQ)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PQnR)
);

static_assert
(	(	(PnQ)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PnQnR)
);
static_assert
(	(	(PnQR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	F
);
static_assert
(	(	(PnQnR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PnQnR)
);

static_assert
(	(	(PR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PQR)
);
static_assert
(	(	(PnR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PnR)
);

static_assert
(	(	(nPQ)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPQR)
);
static_assert
(	(	(nPQR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPQR)
);
static_assert
(	(	(nPQnR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	F
);

static_assert
(	(	(nPnQ)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPnQ)
);
static_assert
(	(	(nPnQR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQnR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPnQnR)
);

static_assert
(	(	(nPR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPR)
);
static_assert
(	(	(nPnR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPnQnR)
);

static_assert
(	(	(nQR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nPnQR)
);
static_assert
(	(	(nQnR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(nQnR)
);

static_assert
(	(	(QR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(QR)
);
static_assert
(	(	(QnR)
	and	(PQ_or_nPR_or_nQnR)
	)
==	(PQnR)
);
