import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR)
///	********************************************************
static_assert
(	(	T
	and	(PQR)
	)
==	(PQR)
);
static_assert
(	(	F
	and	(PQR)
	)
==	F
);

static_assert
(	(	P
	or	(PQR)
	)
==	P
);
static_assert
(	(	nP
	or	(PQR)
	)
==	(nP_or_QR)
);

static_assert
(	(	Q
	or	(PQR)
	)
==	Q
);
static_assert
(	(	nQ
	or	(PQR)
	)
==	(PR_or_nQ)
);

static_assert
(	(	R
	or	(PQR)
	)
==	R
);
static_assert
(	(	nR
	or	(PQR)
	)
==	(PQ_or_nR)
);

static_assert
(	(	(PQ)
	or	(PQR)
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	or	(PQR)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	or	(PQR)
	)
==	(PQ)
);

static_assert
(	(	(PnQ)
	or	(PQR)
	)
==	(PnQ_or_PR)
);
static_assert
(	(	(PnQR)
	or	(PQR)
	)
==	(PR)
);
static_assert
(	(	(PnQnR)
	or	(PQR)
	)
==	(PQR_or_PnQnR)
);

static_assert
(	(	(PR)
	or	(PQR)
	)
==	(PR)
);
static_assert
(	(	(PnR)
	or	(PQR)
	)
==	(PQ_or_PnR)
);

static_assert
(	(	(nPQ)
	or	(PQR)
	)
==	(nPQ_or_QR)
);
static_assert
(	(	(nPQR)
	or	(PQR)
	)
==	(QR)
);
static_assert
(	(	(nPQnR)
	or	(PQR)
	)
==	(PQR_or_nPQnR)
);

static_assert
(	(	(nPnQ)
	or	(PQR)
	)
==	(PQR_or_nPnQ)
);
static_assert
(	(	(nPnQR)
	or	(PQR)
	)
==	(PQR_or_nPnQR)
);
static_assert
(	(	(nPnQnR)
	or	(PQR)
	)
==	(PQR_or_nPnQnR)
);

static_assert
(	(	(nPR)
	or	(PQR)
	)
==	(nPR_or_QR)
);
static_assert
(	(	(nPnR)
	or	(PQR)
	)
==	(PQR_or_nPnR)
);

static_assert
(	(	(QR)
	or	(PQR)
	)
==	(QR)
);
static_assert
(	(	(QnR)
	or	(PQR)
	)
==	(PQ_or_QnR)
);

static_assert
(	(	(nQR)
	or	(PQR)
	)
==	(PR_or_nQR)
);
static_assert
(	(	(nQnR)
	or	(PQR)
	)
==	(PQR_or_nQnR)
);
