import Test.Meta.Logic.Data;

///	********************************************************
///	P
///	********************************************************
static_assert
(	(	T
	or	P
	)
==	T
);
static_assert
(	(	F
	or	P
	)
==	P
);

static_assert
(	(	P
	or	P
	)
==	P
);
static_assert
(	(	nP
	or	P
	)
==	T
);

static_assert
(	(	Q
	or	P
	)
==	(P_or_Q)
);
static_assert
(	(	nQ
	or	P
	)
==	(P_or_nQ)
);

static_assert
(	(	(PQ)
	or	P
	)
==	P
);
static_assert
(	(	(PQR)
	or	P
	)
==	P
);
static_assert
(	(	(PQnR)
	or	P
	)
==	P
);

static_assert
(	(	(PnQ)
	or	P
	)
==	P
);
static_assert
(	(	(PnQR)
	or	P
	)
==	P
);
static_assert
(	(	(PnQnR)
	or	P
	)
==	P
);

static_assert
(	(	(PR)
	or	P
	)
==	P
);
static_assert
(	(	(PnR)
	or	P
	)
==	P
);

static_assert
(	(	(nPQ)
	or	P
	)
==	(P_or_Q)
);
static_assert
(	(	(nPQR)
	or	P
	)
==	(P_or_QR)
);
static_assert
(	(	(nPQnR)
	or	P
	)
==	(P_or_QnR)
);

static_assert
(	(	(nPnQ)
	or	P
	)
==	(P_or_nQ)
);
static_assert
(	(	(nPnQR)
	or	P
	)
==	(P_or_nQR)
);
static_assert
(	(	(nPnQnR)
	or	P
	)
==	(P_or_nQnR)
);

static_assert
(	(	(nPR)
	or	P
	)
==	(P_or_R)
);
static_assert
(	(	(nPnR)
	or	P
	)
==	(P_or_nR)
);

static_assert
(	(	(QR)
	or	P
	)
==	(P_or_QR)
);
static_assert
(	(	(QnR)
	or	P
	)
==	(P_or_QnR)
);

static_assert
(	(	(nQR)
	or	P
	)
==	(P_or_nQR)
);
static_assert
(	(	(nQnR)
	or	P
	)
==	(P_or_nQnR)
);
