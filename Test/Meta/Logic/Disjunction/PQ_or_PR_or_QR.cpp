import Test.Meta.Logic.Data;

///	********************************************************
///	PQ_or_PR_or_QR
///	********************************************************
static_assert
(	(	T
	or	PQ_or_PR_or_QR
	)
==	T
);
static_assert
(	(	F
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);

static_assert
(	(	P
	or	PQ_or_PR_or_QR
	)
==	P_or_QR
);
static_assert
(	(	nP
	or	PQ_or_PR_or_QR
	)
==	nP_or_Q_or_R
);

static_assert
(	(	Q
	or	PQ_or_PR_or_QR
	)
==	PR_or_Q
);
static_assert
(	(	nQ
	or	PQ_or_PR_or_QR
	)
==	P_or_nQ_or_R
);

static_assert
(	(	R
	or	PQ_or_PR_or_QR
	)
==	PQ_or_R
);
static_assert
(	(	nR
	or	PQ_or_PR_or_QR
	)
==	P_or_Q_or_nR
);

static_assert
(	(	PQ
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);
static_assert
(	(	PQR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);
static_assert
(	(	PQnR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);

static_assert
(	(	PnQ
	or	PQ_or_PR_or_QR
	)
==	P_or_QR
);
static_assert
(	(	PnQR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);
static_assert
(	(	PnQnR
	or	PQ_or_PR_or_QR
	)
==	P_or_QR
);

static_assert
(	(	PR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);
static_assert
(	(	PnR
	or	PQ_or_PR_or_QR
	)
==	P_or_QR
);

static_assert
(	(	nPQ
	or	PQ_or_PR_or_QR
	)
==	PR_or_Q
);
static_assert
(	(	nPQR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);
static_assert
(	(	nPQnR
	or	PQ_or_PR_or_QR
	)
==	PR_or_Q
);

static_assert
(	(	nPnQ
	or	PQ_or_PR_or_QR
	)
==	PQ_or_nPnQ_or_R
);
static_assert
(	(	nPnQR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_R
);
static_assert
(	(	nPnQnR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_nPnQnR_or_QR
);

static_assert
(	(	nPR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_R
);
static_assert
(	(	nPnR
	or	PQ_or_PR_or_QR
	)
==	PR_or_nPnR_or_Q
);

static_assert
(	(	QR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_PR_or_QR
);
static_assert
(	(	QnR
	or	PQ_or_PR_or_QR
	)
==	PR_or_Q
);

static_assert
(	(	nQR
	or	PQ_or_PR_or_QR
	)
==	PQ_or_R
);
static_assert
(	(	nQnR
	or	PQ_or_PR_or_QR
	)
==	P_or_QR_or_nQnR
);
