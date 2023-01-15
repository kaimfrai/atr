import Test.Meta.Logic.Data;

///	********************************************************
///	PQ_or_PR_or_QR
///	********************************************************
static_assert
(	(	T
	and	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);
static_assert
(	(	F
	and	PQ_or_PR_or_QR
	)
==	F
);

static_assert
(	(	P
	and	PQ_or_PR_or_QR
	)
==	PQ_or_PR
);
static_assert
(	(	nP
	and	PQ_or_PR_or_QR
	)
==	nPQR
);

static_assert
(	(	Q
	and	PQ_or_PR_or_QR
	)
==	PQ_or_QR
);
static_assert
(	(	nQ
	and	PQ_or_PR_or_QR
	)
==	PnQR
);

static_assert
(	(	R
	and	PQ_or_PR_or_QR
	)
==	PR_or_QR
);
static_assert
(	(	nR
	and	PQ_or_PR_or_QR
	)
==	PQnR
);

static_assert
(	(	PQ
	and	PQ_or_PR_or_QR
	)
==	PQ
);
static_assert
(	(	PQR
	and	PQ_or_PR_or_QR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQ_or_PR_or_QR
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PQ_or_PR_or_QR
	)
==	PnQR
);
static_assert
(	(	PnQR
	and	PQ_or_PR_or_QR
	)
==	PnQR
);
static_assert
(	(	PnQnR
	and	PQ_or_PR_or_QR
	)
==	F
);

static_assert
(	(	PR
	and	PQ_or_PR_or_QR
	)
==	PR
);
static_assert
(	(	PnR
	and	PQ_or_PR_or_QR
	)
==	PQnR
);

static_assert
(	(	nPQ
	and	PQ_or_PR_or_QR
	)
==	nPQR
);
static_assert
(	(	nPQR
	and	PQ_or_PR_or_QR
	)
==	nPQR
);
static_assert
(	(	nPQnR
	and	PQ_or_PR_or_QR
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQ_or_PR_or_QR
	)
==	F
);
static_assert
(	(	nPnQR
	and	PQ_or_PR_or_QR
	)
==	F
);
static_assert
(	(	nPnQnR
	and	PQ_or_PR_or_QR
	)
==	F
);

static_assert
(	(	nPR
	and	PQ_or_PR_or_QR
	)
==	nPQR
);
static_assert
(	(	nPnR
	and	PQ_or_PR_or_QR
	)
==	F
);

static_assert
(	(	QR
	and	PQ_or_PR_or_QR
	)
==	QR
);
static_assert
(	(	QnR
	and	PQ_or_PR_or_QR
	)
==	PQnR
);

static_assert
(	(	nQR
	and	PQ_or_PR_or_QR
	)
==	PnQR
);
static_assert
(	(	nQnR
	and	PQ_or_PR_or_QR
	)
==	F
);
