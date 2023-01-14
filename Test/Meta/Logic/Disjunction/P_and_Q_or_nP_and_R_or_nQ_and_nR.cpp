import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(PQ_or_nPR_or_nQnR)
	)
==	T
);
static_assert
(	(	F
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	P
	or	(PQ_or_nPR_or_nQnR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nP
	or	(PQ_or_nPR_or_nQnR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	Q
	or	(PQ_or_nPR_or_nQnR)
	)
==	(nP_or_Q	or	nR)
);
static_assert
(	(	nQ
	or	(PQ_or_nPR_or_nQnR)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(PQ_or_nPR_or_nQnR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nR
	or	(PQ_or_nPR_or_nQnR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(PQ)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(PQR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(PQnR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	(PnQ)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	(PnQR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	(PnQnR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	(PR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	(PnR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	(nPQ)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(nP_or_Q	or	nR)
);
static_assert
(	(	(nPQR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(nPQnR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(nPnQ)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(nPnQR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(nPnQnR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	(nPR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(nPnR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(QR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(QnR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(nQR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	(nQnR)
	or	(PQ_or_nPR_or_nQnR)
	)
==	(PQ_or_nPR_or_nQnR)
);
