import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_nPnQ)
///	********************************************************
static_assert
(	(	T
	or	(PQ_or_nPnQ)
	)
==	T
);
static_assert
(	(	F
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);

static_assert
(	(	P
	or	(PQ_or_nPnQ)
	)
==	(P_or_nQ)
);
static_assert
(	(	nP
	or	(PQ_or_nPnQ)
	)
==	(nP_or_Q)
);

static_assert
(	(	Q
	or	(PQ_or_nPnQ)
	)
==	(nP_or_Q)
);
static_assert
(	(	nQ
	or	(PQ_or_nPnQ)
	)
==	(P_or_nQ)
);

static_assert
(	(	R
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ_or_R)
);
static_assert
(	(	nR
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	nR)
);

static_assert
(	(	(PQ)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);
static_assert
(	(	(PQR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);
static_assert
(	(	(PQnR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);

static_assert
(	(	(PnQ)
	or	(PQ_or_nPnQ)
	)
==	(P_or_nQ)
);
static_assert
(	(	(PnQR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_PR_or_nPnQ)
);
static_assert
(	(	(PnQnR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_PnR_or_nPnQ)
);

static_assert
(	(	(PR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_PR_or_nPnQ)
);
static_assert
(	(	(PnR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_PnR_or_nPnQ)
);

static_assert
(	(	(nPQ)
	or	(PQ_or_nPnQ)
	)
==	(nP_or_Q)
);
static_assert
(	(	(nPQR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	QR)
);
static_assert
(	(	(nPQnR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	QnR)
);

static_assert
(	(	(nPnQ)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);
static_assert
(	(	(nPnQR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);
static_assert
(	(	(nPnQnR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ)
);

static_assert
(	(	(nPR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	nPR)
);
static_assert
(	(	(nPnR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	nPnR)
);

static_assert
(	(	(QR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	QR)
);
static_assert
(	(	(QnR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	QnR)
);

static_assert
(	(	(nQR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ_or_nQR)
);
static_assert
(	(	(nQnR)
	or	(PQ_or_nPnQ)
	)
==	(PQ_or_nPnQ	or	nQnR)
);
