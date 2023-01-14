import Meta.Logic.Test.Data;

///	********************************************************
///	(P_or_Q)
///	********************************************************
static_assert
(	(	T
	and	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	F
	and	(P_or_Q)
	)
==	F
);

static_assert
(	(	P
	and	(P_or_Q)
	)
==	P
);
static_assert
(	(	nP
	and	(P_or_Q)
	)
==	(nPQ)
);

static_assert
(	(	Q
	and	(P_or_Q)
	)
==	Q
);
static_assert
(	(	nQ
	and	(P_or_Q)
	)
==	(PnQ)
);

static_assert
(	(	R
	and	(P_or_Q)
	)
==	(PR	or	QR)
);
static_assert
(	(	nR
	and	(P_or_Q)
	)
==	(PnR	or	QnR)
);

static_assert
(	(	(PQ)
	and	(P_or_Q)
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	and	(P_or_Q)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(P_or_Q)
	)
==	(PQnR)
);

static_assert
(	(	(PnQ)
	and	(P_or_Q)
	)
==	(PnQ)
);
static_assert
(	(	(PnQR)
	and	(P_or_Q)
	)
==	(PnQR)
);
static_assert
(	(	(PnQnR)
	and	(P_or_Q)
	)
==	(PnQnR)
);

static_assert
(	(	(PR)
	and	(P_or_Q)
	)
==	(PR)
);
static_assert
(	(	(PnR)
	and	(P_or_Q)
	)
==	(PnR)
);

static_assert
(	(	(nPQ)
	and	(P_or_Q)
	)
==	(nPQ)
);
static_assert
(	(	(nPQR)
	and	(P_or_Q)
	)
==	(nPQR)
);
static_assert
(	(	(nPQnR)
	and	(P_or_Q)
	)
==	(nPQnR)
);

static_assert
(	(	(nPnQ)
	and	(P_or_Q)
	)
==	F
);
static_assert
(	(	(nPnQR)
	and	(P_or_Q)
	)
==	F
);
static_assert
(	(	(nPnQnR)
	and	(P_or_Q)
	)
==	F
);

static_assert
(	(	(nPR)
	and	(P_or_Q)
	)
==	(nPQR)
);
static_assert
(	(	(nPnR)
	and	(P_or_Q)
	)
==	(nPQnR)
);

static_assert
(	(	(QR)
	and	(P_or_Q)
	)
==	(QR)
);
static_assert
(	(	(QnR)
	and	(P_or_Q)
	)
==	(QnR)
);

static_assert
(	(	(nQR)
	and	(P_or_Q)
	)
==	(PnQR)
);
static_assert
(	(	(nQnR)
	and	(P_or_Q)
	)
==	(PnQnR)
);
