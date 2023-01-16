import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_PR_QR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Conjunction;

///	********************************************************
///	PQ_PR_QR
///	********************************************************
static_assert
(	(	T
	and	PQ_PR_QR
	)
==	PQ_PR_QR
);
static_assert
(	(	F
	and	PQ_PR_QR
	)
==	F
);

static_assert
(	(	P
	and	PQ_PR_QR
	)
==	PQ_PR
);
static_assert
(	(	nP
	and	PQ_PR_QR
	)
==	nPQR
);

static_assert
(	(	Q
	and	PQ_PR_QR
	)
==	PQ_QR
);
static_assert
(	(	nQ
	and	PQ_PR_QR
	)
==	PnQR
);

static_assert
(	(	R
	and	PQ_PR_QR
	)
==	PR_QR
);
static_assert
(	(	nR
	and	PQ_PR_QR
	)
==	PQnR
);

static_assert
(	(	PQ
	and	PQ_PR_QR
	)
==	PQ
);
static_assert
(	(	PQR
	and	PQ_PR_QR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQ_PR_QR
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PQ_PR_QR
	)
==	PnQR
);
static_assert
(	(	PnQR
	and	PQ_PR_QR
	)
==	PnQR
);
static_assert
(	(	PnQnR
	and	PQ_PR_QR
	)
==	F
);

static_assert
(	(	PR
	and	PQ_PR_QR
	)
==	PR
);
static_assert
(	(	PnR
	and	PQ_PR_QR
	)
==	PQnR
);

static_assert
(	(	nPQ
	and	PQ_PR_QR
	)
==	nPQR
);
static_assert
(	(	nPQR
	and	PQ_PR_QR
	)
==	nPQR
);
static_assert
(	(	nPQnR
	and	PQ_PR_QR
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQ_PR_QR
	)
==	F
);
static_assert
(	(	nPnQR
	and	PQ_PR_QR
	)
==	F
);
static_assert
(	(	nPnQnR
	and	PQ_PR_QR
	)
==	F
);

static_assert
(	(	nPR
	and	PQ_PR_QR
	)
==	nPQR
);
static_assert
(	(	nPnR
	and	PQ_PR_QR
	)
==	F
);

static_assert
(	(	QR
	and	PQ_PR_QR
	)
==	QR
);
static_assert
(	(	QnR
	and	PQ_PR_QR
	)
==	PQnR
);

static_assert
(	(	nQR
	and	PQ_PR_QR
	)
==	PnQR
);
static_assert
(	(	nQnR
	and	PQ_PR_QR
	)
==	F
);
