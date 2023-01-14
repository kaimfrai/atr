import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQ_or_nPnQ_or_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQ_or_nPnQ_or_R)
);
static_assert
(	(	F
	and	(PQ_or_nPnQ_or_R)
	)
==	F
);

static_assert
(	(	P
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQ_or_PR)
);
static_assert
(	(	nP
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPnQ	or	nPR)
);

static_assert
(	(	Q
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQ_or_QR)
);
static_assert
(	(	nQ
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPnQ	or	nQR)
);

static_assert
(	(	R
	and	(PQ_or_nPnQ_or_R)
	)
==	R
);
static_assert
(	(	nR
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQnR	or	nPnQnR)
);

static_assert
(	(	(PQ)
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQnR)
);

static_assert
(	(	(PnQ)
	and	(PQ_or_nPnQ_or_R)
	)
==	(PnQR)
);
static_assert
(	(	(PnQR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(PnQR)
);
static_assert
(	(	(PnQnR)
	and	(PQ_or_nPnQ_or_R)
	)
==	F
);

static_assert
(	(	(PR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(PR)
);
static_assert
(	(	(PnR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQnR)
);

static_assert
(	(	(nPQ)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPQR)
);
static_assert
(	(	(nPQR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPQR)
);
static_assert
(	(	(nPQnR)
	and	(PQ_or_nPnQ_or_R)
	)
==	F
);

static_assert
(	(	(nPnQ)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPnQ)
);
static_assert
(	(	(nPnQR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQnR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPnQnR)
);

static_assert
(	(	(nPR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPR)
);
static_assert
(	(	(nPnR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPnQnR)
);

static_assert
(	(	(QR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(QR)
);
static_assert
(	(	(QnR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(PQnR)
);

static_assert
(	(	(nQR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nQR)
);
static_assert
(	(	(nQnR)
	and	(PQ_or_nPnQ_or_R)
	)
==	(nPnQnR)
);
