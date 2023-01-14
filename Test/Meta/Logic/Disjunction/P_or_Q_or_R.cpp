import Meta.Logic.Test.Data;

///	********************************************************
///	(P_or_Q_or_R)
///	********************************************************
static_assert
(	(	T
	or	(P_or_Q_or_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);

static_assert
(	(	P
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	nP
	or	(P_or_Q_or_R)
	)
==	T
);

static_assert
(	(	Q
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	nQ
	or	(P_or_Q_or_R)
	)
==	T
);

static_assert
(	(	R
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	nR
	or	(P_or_Q_or_R)
	)
==	T
);

static_assert
(	(	T
	and	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	F
	and	(P_or_Q_or_R)
	)
==	F
);

static_assert
(	(	(PQ)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(PQR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(PQnR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);

static_assert
(	(	(PnQ)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(PnQR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(PnQnR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);

static_assert
(	(	(PR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(PnR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);

static_assert
(	(	(nPQ)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(nPQR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(nPQnR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);

static_assert
(	(	(nPnQ)
	or	(P_or_Q_or_R)
	)
==	T
);
static_assert
(	(	(nPnQR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(nPnQnR)
	or	(P_or_Q_or_R)
	)
==	T
);

static_assert
(	(	(nPR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(nPnR)
	or	(P_or_Q_or_R)
	)
==	T
);

static_assert
(	(	(QR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(QnR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);

static_assert
(	(	(nQR)
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(nQnR)
	or	(P_or_Q_or_R)
	)
==	T
);
