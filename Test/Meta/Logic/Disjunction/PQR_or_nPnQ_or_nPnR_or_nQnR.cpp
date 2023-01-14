import Meta.Logic.Test.Data;

///	********************************************************
///	(PQR_or_nPnQ_or_nPnR_or_nQnR)
///	********************************************************
static_assert
(	(	T
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	T
);
static_assert
(	(	F
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);

static_assert
(	(	P
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(P_or_nQ	or	nR)
);
static_assert
(	(	nP
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(nP_or_QR	or	nQnR)
);

static_assert
(	(	Q
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(nP_or_Q	or	nR)
);
static_assert
(	(	nQ
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PR	or	nPnR	or	nQ)
);

static_assert
(	(	R
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(nP_or_nQ	or	R)
);
static_assert
(	(	nR
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQ_or_nPnQ	or	nR)
);

static_assert
(	(	(PQ)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQ_or_nPnQ	or	nR)
);
static_assert
(	(	(PQR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);
static_assert
(	(	(PQnR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQ_or_nPnQ	or	nR)
);

static_assert
(	(	(PnQ)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PR	or	nPnR	or	nQ)
);
static_assert
(	(	(PnQR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PR	or	nPnR	or	nQ)
);
static_assert
(	(	(PnQnR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ	or	nQnR	or	nPnR)
);

static_assert
(	(	(PR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PR	or	nPnR	or	nQ)
);
static_assert
(	(	(PnR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQ_or_nPnQ	or	nR)
);

static_assert
(	(	(nPQ)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(nP_or_QR	or	nQnR)
);
static_assert
(	(	(nPQR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(nP_or_QR	or	nQnR)
);
static_assert
(	(	(nPQnR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);

static_assert
(	(	(nPnQ)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);
static_assert
(	(	(nPnQR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);
static_assert
(	(	(nPnQnR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);

static_assert
(	(	(nPR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(nP_or_QR	or	nQnR)
);
static_assert
(	(	(nPnR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);

static_assert
(	(	(QR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(nP_or_QR	or	nQnR)
);
static_assert
(	(	(QnR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQ_or_nPnQ	or	nR)
);

static_assert
(	(	(nQR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PR	or	nPnR	or	nQ)
);
static_assert
(	(	(nQnR)
	or	(PQR_or_nPnQ_or_nPnR_or_nQnR)
	)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);
