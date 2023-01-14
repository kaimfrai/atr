import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_nPR)
///	********************************************************
static_assert
(	(	T
	and	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);
static_assert
(	(	F
	and	(PQ_or_nPR)
	)
==	F
);

static_assert
(	(	P
	and	(PQ_or_nPR)
	)
==	(PQ)
);
static_assert
(	(	nP
	and	(PQ_or_nPR)
	)
==	(nPR)
);

static_assert
(	(	Q
	and	(PQ_or_nPR)
	)
==	(PQ_or_QR)
);
static_assert
(	(	nQ
	and	(PQ_or_nPR)
	)
==	(nPnQR)
);

static_assert
(	(	R
	and	(PQ_or_nPR)
	)
==	(nPR	or	QR)
);
static_assert
(	(	nR
	and	(PQ_or_nPR)
	)
==	(PQnR)
);

static_assert
(	(	(PQ)
	and	(PQ_or_nPR)
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	and	(PQ_or_nPR)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(PQ_or_nPR)
	)
==	(PQnR)
);

static_assert
(	(	(PnQ)
	and	(PQ_or_nPR)
	)
==	F
);
static_assert
(	(	(PnQR)
	and	(PQ_or_nPR)
	)
==	F
);
static_assert
(	(	(PnQnR)
	and	(PQ_or_nPR)
	)
==	F
);

static_assert
(	(	(PR)
	and	(PQ_or_nPR)
	)
==	(PQR)
);
static_assert
(	(	(PnR)
	and	(PQ_or_nPR)
	)
==	(PQnR)
);

static_assert
(	(	(nPQ)
	and	(PQ_or_nPR)
	)
==	(nPQR)
);
static_assert
(	(	(nPQR)
	and	(PQ_or_nPR)
	)
==	(nPQR)
);
static_assert
(	(	(nPQnR)
	and	(PQ_or_nPR)
	)
==	F
);

static_assert
(	(	(nPnQ)
	and	(PQ_or_nPR)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQR)
	and	(PQ_or_nPR)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQnR)
	and	(PQ_or_nPR)
	)
==	F
);

static_assert
(	(	(nPR)
	and	(PQ_or_nPR)
	)
==	(nPR)
);
static_assert
(	(	(nPnR)
	and	(PQ_or_nPR)
	)
==	F
);

static_assert
(	(	(QR)
	and	(PQ_or_nPR)
	)
==	(QR)
);
static_assert
(	(	(QnR)
	and	(PQ_or_nPR)
	)
==	(PQnR)
);

static_assert
(	(	(nQR)
	and	(PQ_or_nPR)
	)
==	(nPnQR)
);
static_assert
(	(	(nQnR)
	and	(PQ_or_nPR)
	)
==	F
);
