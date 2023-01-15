import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;
import Test.Meta.Logic.Cache.PQR_or_PnQnR;

///	********************************************************
///	PQ_or_PR_or_nPnQ
///	PQ_or_nPnQ_or_nQR
///	********************************************************
static_assert
(	(	T
	and	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(	F
	and	PQ_or_PR_or_nPnQ
	)
==	F
);

static_assert
(	(	P
	and	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR
);
static_assert
(	(	nP
	and	PQ_or_PR_or_nPnQ
	)
==	nPnQ
);

static_assert
(	(	Q
	and	PQ_or_PR_or_nPnQ
	)
==	PQ
);
static_assert
(	(	nQ
	and	PQ_or_PR_or_nPnQ
	)
==	nPnQ_or_nQR
);

static_assert
(	(	R
	and	PQ_or_PR_or_nPnQ
	)
==	PR_or_nQR
);
static_assert
(	(	nR
	and	PQ_or_PR_or_nPnQ
	)
==	PQnR_or_nPnQnR
);

static_assert
(	(	PQ
	and	PQ_or_PR_or_nPnQ
	)
==	PQ
);
static_assert
(	(	PQR
	and	PQ_or_PR_or_nPnQ
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQ_or_PR_or_nPnQ
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PQ_or_PR_or_nPnQ
	)
==	PnQR
);
static_assert
(	(	PnQR
	and	PQ_or_PR_or_nPnQ
	)
==	PnQR
);
static_assert
(	(	PnQnR
	and	PQ_or_PR_or_nPnQ
	)
==	F
);

static_assert
(	(	PR
	and	PQ_or_PR_or_nPnQ
	)
==	PR
);
static_assert
(	(	PnR
	and	PQ_or_PR_or_nPnQ
	)
==	PQnR
);

static_assert
(	(	nPQ
	and	PQ_or_PR_or_nPnQ
	)
==	F
);
static_assert
(	(	nPQR
	and	PQ_or_PR_or_nPnQ
	)
==	F
);
static_assert
(	(	nPQnR
	and	PQ_or_PR_or_nPnQ
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQ_or_PR_or_nPnQ
	)
==	nPnQ
);
static_assert
(	(	nPnQR
	and	PQ_or_PR_or_nPnQ
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	PQ_or_PR_or_nPnQ
	)
==	nPnQnR
);

static_assert
(	(	nPR
	and	PQ_or_PR_or_nPnQ
	)
==	nPnQR
);
static_assert
(	(	nPnR
	and	PQ_or_PR_or_nPnQ
	)
==	nPnQnR
);

static_assert
(	(	QR
	and	PQ_or_PR_or_nPnQ
	)
==	PQR
);
static_assert
(	(	QnR
	and	PQ_or_PR_or_nPnQ
	)
==	PQnR
);

static_assert
(	(	nQR
	and	PQ_or_PR_or_nPnQ
	)
==	nQR
);
static_assert
(	(	nQnR
	and	PQ_or_PR_or_nPnQ
	)
==	nPnQnR
);
