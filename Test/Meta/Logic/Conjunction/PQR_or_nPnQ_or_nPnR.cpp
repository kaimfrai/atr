import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQR_or_nPnQ_or_nPnR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(PQR_or_nPnQ_or_nPnR)
);
static_assert
(	(	F
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	F
);

static_assert
(	(	P
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(PQR)
);
static_assert
(	(	nP
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnQ	or	nPnR)
);

static_assert
(	(	Q
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(PQR	or	nPQnR)
);
static_assert
(	(	nQ
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnQ)
);

static_assert
(	(	R
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(PQR_or_nPnQR)
);
static_assert
(	(	nR
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnR)
);

static_assert
(	(	(PQ)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(PQR)
);
static_assert
(	(	(PQR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	F
);

static_assert
(	(	(PnQ)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	F
);
static_assert
(	(	(PnQR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	F
);
static_assert
(	(	(PnQnR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	F
);

static_assert
(	(	(PR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(PQR)
);
static_assert
(	(	(PnR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	F
);

static_assert
(	(	(nPQ)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPQnR)
);
static_assert
(	(	(nPQR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	F
);
static_assert
(	(	(nPQnR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPQnR)
);

static_assert
(	(	(nPnQ)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnQ)
);
static_assert
(	(	(nPnQR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQnR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnQnR)
);

static_assert
(	(	(nPR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnR)
);

static_assert
(	(	(QR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(PQR)
);
static_assert
(	(	(QnR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPQnR)
);

static_assert
(	(	(nQR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnQR)
);
static_assert
(	(	(nQnR)
	and	(PQR_or_nPnQ_or_nPnR)
	)
==	(nPnQnR)
);