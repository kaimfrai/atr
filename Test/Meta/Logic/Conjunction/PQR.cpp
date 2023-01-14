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
	and	(PQR)
	)
==	(PQR)
);
static_assert
(	(	nP
	and	(PQR)
	)
==	F
);

static_assert
(	(	Q
	and	(PQR)
	)
==	(PQR)
);
static_assert
(	(	nQ
	and	(PQR)
	)
==	F
);

static_assert
(	(	R
	and	(PQR)
	)
==	(PQR)
);
static_assert
(	(	nR
	and	(PQR)
	)
==	F
);

static_assert
(	(	(PQ)
	and	(PQR)
	)
==	(PQR)
);
static_assert
(	(	(PQR)
	and	(PQR)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(PQR)
	)
==	F
);

static_assert
(	(	(PnQ)
	and	(PQR)
	)
==	F
);
static_assert
(	(	(PnQR)
	and	(PQR)
	)
==	F
);
static_assert
(	(	(PnQnR)
	and	(PQR)
	)
==	F
);

static_assert
(	(	(PR)
	and	(PQR)
	)
==	(PQR)
);
static_assert
(	(	(PnR)
	and	(PQR)
	)
==	F
);

static_assert
(	(	(nPQ)
	and	(PQR)
	)
==	F
);
static_assert
(	(	(nPQR)
	and	(PQR)
	)
==	F
);
static_assert
(	(	(nPQnR)
	and	(PQR)
	)
==	F
);

static_assert
(	(	(nPnQ)
	and	(PQR)
	)
==	F
);
static_assert
(	(	(nPnQR)
	and	(PQR)
	)
==	F
);
static_assert
(	(	(nPnQnR)
	and	(PQR)
	)
==	F
);

static_assert
(	(	(nPR)
	and	(PQR)
	)
==	F
);
static_assert
(	(	(nPnR)
	and	(PQR)
	)
==	F
);

static_assert
(	(	(QR)
	and	(PQR)
	)
==	(PQR)
);
static_assert
(	(	(QnR)
	and	(PQR)
	)
==	F
);

static_assert
(	(	(nQR)
	and	(PQR)
	)
==	F
);
static_assert
(	(	(nQnR)
	and	(PQR)
	)
==	F
);
