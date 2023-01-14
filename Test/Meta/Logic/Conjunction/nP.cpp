import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	nP
/// ************************************************************************************************
static_assert
(	(	T
	and	nP
	)
==	nP
);
static_assert
(	(	F
	and	nP
	)
==	F
);

static_assert
(	(	P
	and	nP
	)
==	F
);
static_assert
(	(	nP
	and	nP
	)
==	nP
);

static_assert
(	(	Q
	and	nP
	)
==	(nPQ)
);
static_assert
(	(	nQ
	and	nP
	)
==	(nPnQ)
);

static_assert
(	(	(PQ)
	and	nP
	)
==	F
);
static_assert
(	(	(PQR)
	and	nP
	)
==	F
);
static_assert
(	(	(PQnR)
	and	nP
	)
==	F
);

static_assert
(	(	(PnQ)
	and	nP
	)
==	F
);
static_assert
(	(	(PnQR)
	and	nP
	)
==	F
);
static_assert
(	(	(PnQnR)
	and	nP
	)
==	F
);

static_assert
(	(	(PR)
	and	nP
	)
==	F
);
static_assert
(	(	(PnR)
	and	nP
	)
==	F
);

static_assert
(	(	(nPQ)
	and	nP
	)
==	(nPQ)
);
static_assert
(	(	(nPQR)
	and	nP
	)
==	(nPQR)
);
static_assert
(	(	(nPQnR)
	and	nP
	)
==	(nPQnR)
);

static_assert
(	(	(nPnQ)
	and	nP
	)
==	(nPnQ)
);
static_assert
(	(	(nPnQR)
	and	nP
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQnR)
	and	nP
	)
==	(nPnQnR)
);

static_assert
(	(	(nPR)
	and	nP
	)
==	(nPR)
);
static_assert
(	(	(nPnR)
	and	nP
	)
==	(nPnR)
);

static_assert
(	(	(QR)
	and	nP
	)
==	(nPQR)
);
static_assert
(	(	(QnR)
	and	nP
	)
==	(nPQnR)
);

static_assert
(	(	(nQR)
	and	nP
	)
==	(nPnQR)
);
static_assert
(	(	(nQnR)
	and	nP
	)
==	(nPnQnR)
);
