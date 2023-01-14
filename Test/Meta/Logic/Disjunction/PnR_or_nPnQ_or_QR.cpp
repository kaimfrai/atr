import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	(	T
	or	(PnR_or_nPnQ_or_QR)
	)
==	T
);
static_assert
(	(	F
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	P
	or	(PnR_or_nPnQ_or_QR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nP
	or	(PnR_or_nPnQ_or_QR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	Q
	or	(PnR_or_nPnQ_or_QR)
	)
==	(nP_or_Q	or	nR)
);
static_assert
(	(	nQ
	or	(PnR_or_nPnQ_or_QR)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(PnR_or_nPnQ_or_QR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nR
	or	(PnR_or_nPnQ_or_QR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(PQ)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(PQR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(PQnR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	(PnQ)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	(PnQR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	(PnQnR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	(PR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	(PnR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	(nPQ)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(nP_or_Q	or	nR)
);
static_assert
(	(	(nPQR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(nPQnR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(nPnQ)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(nPnQR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(nPnQnR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);

static_assert
(	(	(nPR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(nPnR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(QR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
static_assert
(	(	(QnR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	(nQR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	(nQnR)
	or	(PnR_or_nPnQ_or_QR)
	)
==	(PQ_or_nPR_or_nQnR)
);
