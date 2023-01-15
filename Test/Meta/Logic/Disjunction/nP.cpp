import Test.Meta.Logic.Data;

///	********************************************************
///	nP
///	********************************************************
static_assert
(	(	T
	or	nP
	)
==	T
);
static_assert
(	(	F
	or	nP
	)
==	nP
);

static_assert
(	(	P
	or	nP
	)
==	T
);
static_assert
(	(	nP
	or	nP
	)
==	nP
);

static_assert
(	(	Q
	or	nP
	)
==	nP_or_Q
);
static_assert
(	(	nQ
	or	nP
	)
==	nP_or_nQ
);

static_assert
(	(	PQ
	or	nP
	)
==	nP_or_Q
);
static_assert
(	(	PQR
	or	nP
	)
==	nP_or_QR
);
static_assert
(	(	PQnR
	or	nP
	)
==	nP_or_QnR
);

static_assert
(	(	PnQ
	or	nP
	)
==	nP_or_nQ
);
static_assert
(	(	PnQR
	or	nP
	)
==	nP_or_nQR
);
static_assert
(	(	PnQnR
	or	nP
	)
==	nP_or_nQnR
);

static_assert
(	(	PR
	or	nP
	)
==	nP_or_R
);
static_assert
(	(	PnR
	or	nP
	)
==	nP_or_nR
);

static_assert
(	(	nPQ
	or	nP
	)
==	nP
);
static_assert
(	(	nPQR
	or	nP
	)
==	nP
);
static_assert
(	(	nPQnR
	or	nP
	)
==	nP
);

static_assert
(	(	nPnQ
	or	nP
	)
==	nP
);
static_assert
(	(	nPnQR
	or	nP
	)
==	nP
);
static_assert
(	(	nPnQnR
	or	nP
	)
==	nP
);

static_assert
(	(	nPR
	or	nP
	)
==	nP
);
static_assert
(	(	nPnR
	or	nP
	)
==	nP
);

static_assert
(	(	QR
	or	nP
	)
==	nP_or_QR
);
static_assert
(	(	QnR
	or	nP
	)
==	nP_or_QnR
);

static_assert
(	(	nQR
	or	nP
	)
==	nP_or_nQR
);
static_assert
(	(	nQnR
	or	nP
	)
==	nP_or_nQnR
);
