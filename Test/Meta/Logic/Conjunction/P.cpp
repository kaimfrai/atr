import Test.Meta.Logic.Data;

///	********************************************************
///	P
///	********************************************************
static_assert
(	(	T
	and	P
	)
==	P
);
static_assert
(	(	F
	and	P
	)
==	F
);

static_assert
(	(	P
	and	P
	)
==	P
);
static_assert
(	(	nP
	and	P
	)
==	F
);

static_assert
(	(	Q
	and	P
	)
==	(PQ)
);

static_assert
(	(	nQ
	and	P
	)
==	(PnQ)
);

static_assert
(	(	(PQ)
	and	P
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	and	P
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	P
	)
==	(PQnR)
);

static_assert
(	(	(PnQ)
	and	P
	)
==	(PnQ)
);
static_assert
(	(	(PnQR)
	and	P
	)
==	(PnQR)
);
static_assert
(	(	(PnQnR)
	and	P
	)
==	(PnQnR)
);

static_assert
(	(	(PR)
	and	P
	)
==	(PR)
);
static_assert
(	(	(PnR)
	and	P
	)
==	(PnR)
);

static_assert
(	(	(nPQ)
	and	P
	)
==	F
);
static_assert
(	(	(nPQR)
	and	P
	)
==	F
);
static_assert
(	(	(nPQnR)
	and	P
	)
==	F
);

static_assert
(	(	(nPnQ)
	and	P
	)
==	F
);
static_assert
(	(	(nPnQR)
	and	P
	)
==	F
);
static_assert
(	(	(nPnQnR)
	and	P
	)
==	F
);

static_assert
(	(	(nPR)
	and	P
	)
==	F
);
static_assert
(	(	(nPnR)
	and	P
	)
==	F
);

static_assert
(	(	(QR)
	and	P
	)
==	(PQR)
);
static_assert
(	(	(QnR)
	and	P
	)
==	(PQnR)
);

static_assert
(	(	(nQR)
	and	P
	)
==	(PnQR)
);
static_assert
(	(	(nQnR)
	and	P
	)
==	(PnQnR)
);
