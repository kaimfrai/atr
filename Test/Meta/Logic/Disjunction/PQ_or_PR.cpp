import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_PR)
///	********************************************************
static_assert
(	(	T
	or	(PQ_or_PR)
	)
==	T
);
static_assert
(	(	F
	or	(PQ_or_PR)
	)
==	(PQ_or_PR)
);

static_assert
(	(	P
	or	(PQ_or_PR)
	)
==	P
);
static_assert
(	(	nP
	or	(PQ_or_PR)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	Q
	or	(PQ_or_PR)
	)
==	(PR_or_Q)
);
static_assert
(	(	nQ
	or	(PQ_or_PR)
	)
==	(P_or_nQ)
);

static_assert
(	(	R
	or	(PQ_or_PR)
	)
==	(PQ_or_R)
);
static_assert
(	(	nR
	or	(PQ_or_PR)
	)
==	(P_or_nR)
);

static_assert
(	(	(PQ)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR)
);
static_assert
(	(	(PQR)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR)
);
static_assert
(	(	(PQnR)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR)
);

static_assert
(	(	(PnQ)
	or	(PQ_or_PR)
	)
==	P
);
static_assert
(	(	(PnQR)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR)
);
static_assert
(	(	(PnQnR)
	or	(PQ_or_PR)
	)
==	P
);

static_assert
(	(	(PR)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR)
);
static_assert
(	(	(PnR)
	or	(PQ_or_PR)
	)
==	P
);

static_assert
(	(	(nPQ)
	or	(PQ_or_PR)
	)
==	(PR_or_Q)
);
static_assert
(	(	(nPQR)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR_or_QR)
);
static_assert
(	(	(nPQnR)
	or	(PQ_or_PR)
	)
==	(PR_or_QnR)
);

static_assert
(	(	(nPnQ)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR_or_nPnQ)
);
static_assert
(	(	(nPnQR)
	or	(PQ_or_PR)
	)
==	(PQ_or_nQR)
);
static_assert
(	(	(nPnQnR)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR_or_nPnQnR)
);

static_assert
(	(	(nPR)
	or	(PQ_or_PR)
	)
==	(PQ_or_R)
);
static_assert
(	(	(nPnR)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR_or_nPnR)
);

static_assert
(	(	(QR)
	or	(PQ_or_PR)
	)
==	(PQ_or_PR_or_QR)
);
static_assert
(	(	(QnR)
	or	(PQ_or_PR)
	)
==	(PR_or_QnR)
);

static_assert
(	(	(nQR)
	or	(PQ_or_PR)
	)
==	(PQ_or_nQR)
);
static_assert
(	(	(nQnR)
	or	(PQ_or_PR)
	)
==	(P_or_nQnR)
);
