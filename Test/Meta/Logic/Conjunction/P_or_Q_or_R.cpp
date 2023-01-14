import Test.Meta.Logic.Data;

///	********************************************************
///	(P_or_Q_or_R)
///	********************************************************
static_assert
(	(	P
	and	(P_or_Q_or_R)
	)
==	P
);
static_assert
(	(	nP
	and	(P_or_Q_or_R)
	)
==	(nPQ_or_nPR)
);

static_assert
(	(	Q
	and	(P_or_Q_or_R)
	)
==	Q
);
static_assert
(	(	nQ
	and	(P_or_Q_or_R)
	)
==	(PnQ	or	nQR)
);

static_assert
(	(	R
	and	(P_or_Q_or_R)
	)
==	R
);
static_assert
(	(	nR
	and	(P_or_Q_or_R)
	)
==	(PnR	or	QnR)
);

static_assert
(	(	(PQ)
	and	(P_or_Q_or_R)
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	and	(P_or_Q_or_R)
	)
==	(PQR)
);
static_assert
(	(	(PQnR)
	and	(P_or_Q_or_R)
	)
==	(PQnR)
);

static_assert
(	(	(PnQ)
	and	(P_or_Q_or_R)
	)
==	(PnQ)
);
static_assert
(	(	(PnQR)
	and	(P_or_Q_or_R)
	)
==	(PnQR)
);
static_assert
(	(	(PnQnR)
	and	(P_or_Q_or_R)
	)
==	(PnQnR)
);

static_assert
(	(	(PR)
	and	(P_or_Q_or_R)
	)
==	(PR)
);
static_assert
(	(	(PnR)
	and	(P_or_Q_or_R)
	)
==	(PnR)
);

static_assert
(	(	(nPQ)
	and	(P_or_Q_or_R)
	)
==	(nPQ)
);
static_assert
(	(	(nPQR)
	and	(P_or_Q_or_R)
	)
==	(nPQR)
);
static_assert
(	(	(nPQnR)
	and	(P_or_Q_or_R)
	)
==	(nPQnR)
);

static_assert
(	(	(nPnQ)
	and	(P_or_Q_or_R)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQR)
	and	(P_or_Q_or_R)
	)
==	(nPnQR)
);
static_assert
(	(	(nPnQnR)
	and	(P_or_Q_or_R)
	)
==	F
);

static_assert
(	(	(nPR)
	and	(P_or_Q_or_R)
	)
==	(nPR)
);
static_assert
(	(	(nPnR)
	and	(P_or_Q_or_R)
	)
==	(nPQnR)
);

static_assert
(	(	(QR)
	and	(P_or_Q_or_R)
	)
==	(QR)
);
static_assert
(	(	(QnR)
	and	(P_or_Q_or_R)
	)
==	(QnR)
);

static_assert
(	(	(nQR)
	and	(P_or_Q_or_R)
	)
==	(nQR)
);
static_assert
(	(	(nQnR)
	and	(P_or_Q_or_R)
	)
==	(PnQnR)
);
