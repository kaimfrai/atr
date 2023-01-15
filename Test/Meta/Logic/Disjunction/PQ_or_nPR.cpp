import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPR)
///	********************************************************
static_assert
(	(	T
	or	(PQ_or_nPR)
	)
==	T
);
static_assert
(	(	F
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);

static_assert
(	(	P
	or	(PQ_or_nPR)
	)
==	(P_or_R)
);
static_assert
(	(	nP
	or	(PQ_or_nPR)
	)
==	(nP_or_Q)
);

static_assert
(	(	Q
	or	(PQ_or_nPR)
	)
==	(nPR_or_Q)
);
static_assert
(	(	nQ
	or	(PQ_or_nPR)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(PQ_or_nPR)
	)
==	(PQ_or_R)
);
static_assert
(	(	nR
	or	(PQ_or_nPR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(PQ)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);
static_assert
(	(	(PQR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);
static_assert
(	(	(PQnR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);

static_assert
(	(	(PnQ)
	or	(PQ_or_nPR)
	)
==	(P_or_R)
);

static_assert
(	(	(PnQR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_R)
);
static_assert
(	(	(PnQnR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_PnR_or_nPR)
);

static_assert
(	(	(PR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_R)
);
static_assert
(	(	(PnR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_PnR_or_nPR)
);

static_assert
(	(	(nPQ)
	or	(PQ_or_nPR)
	)
==	(nPR_or_Q)
);
static_assert
(	(	(nPQR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);
static_assert
(	(	(nPQnR)
	or	(PQ_or_nPR)
	)
==	(nPR_or_Q)
);

static_assert
(	(	(nPnQ)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPnQ_or_nPR)
);
static_assert
(	(	(nPnQR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);
static_assert
(	(	(nPnQnR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPnQ_or_nPR)
);

static_assert
(	(	(nPR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);
static_assert
(	(	(nPnR)
	or	(PQ_or_nPR)
	)
==	(nP_or_Q)
);

static_assert
(	(	(QR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR)
);
static_assert
(	(	(QnR)
	or	(PQ_or_nPR)
	)
==	(nPR_or_Q)
);

static_assert
(	(	(nQR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_R)
);
static_assert
(	(	(nQnR)
	or	(PQ_or_nPR)
	)
==	(PQ_or_nPR_or_nQnR)
);
