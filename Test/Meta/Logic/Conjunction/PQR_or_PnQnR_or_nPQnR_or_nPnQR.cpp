import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
///	********************************************************
static_assert
(	(	T
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
);
static_assert
(	(	F
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	F
);

static_assert
(	(	P
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_PnQnR)
);
static_assert
(	(	nP
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nPQnR	or	nPnQR)
);

static_assert
(	(	Q
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR	or	nPQnR)
);
static_assert
(	(	nQ
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR	or	nPnQR)
);

static_assert
(	(	R
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR_or_nPnQR)
);
static_assert
(	(	nR
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR	or	nPQnR)
);

static_assert
(	(	(PQ)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR)
);
static_assert
(	(	(PQR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	F
);

static_assert
(	(	(PnQ)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR)
);
static_assert
(	(	(PnQR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	F
);
static_assert
(	(	(PnQnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR)
);

static_assert
(	(	(PR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR)
);
static_assert
(	(	(PnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR)
);

static_assert
(	(	(nPQ)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nPQnR)
);
static_assert
(	(	(nPQR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	F
);
static_assert
(	(	(nPQnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nPQnR)
);

static_assert
(	(	(nPnQ)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nPnQR)
);
static_assert
(	(	(PnQnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR)
);
static_assert
(	(	(nPnQnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	F
);

static_assert
(	(	(nPR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nPQnR)
);

static_assert
(	(	(QR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PQR)
);
static_assert
(	(	(QnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nPQnR)
);

static_assert
(	(	(nQR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(nPnQR)
);
static_assert
(	(	(nQnR)
	and	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
	)
==	(PnQnR)
);
