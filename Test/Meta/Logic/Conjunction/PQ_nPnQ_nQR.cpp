import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_PR_nPnQ;
import Test.Meta.Logic.Cache.PQR_PnQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Conjunction;

///	********************************************************
///	PQ_PR_nPnQ
///	PQ_nPnQ_nQR
///	********************************************************
static_assert
(	(	T
	and	PQ_nPnQ_nQR
	)
==	PQ_PR_nPnQ
);
static_assert
(	(	F
	and	PQ_nPnQ_nQR
	)
==	F
);

static_assert
(	(	P
	and	PQ_nPnQ_nQR
	)
==	PQ_PR
);
static_assert
(	(	nP
	and	PQ_nPnQ_nQR
	)
==	nPnQ
);

static_assert
(	(	Q
	and	PQ_nPnQ_nQR
	)
==	PQ
);
static_assert
(	(	nQ
	and	PQ_nPnQ_nQR
	)
==	nPnQ_nQR
);

static_assert
(	(	R
	and	PQ_nPnQ_nQR
	)
==	PR_nQR
);
static_assert
(	(	nR
	and	PQ_nPnQ_nQR
	)
==	PQnR_nPnQnR
);

static_assert
(	(	PQ
	and	PQ_nPnQ_nQR
	)
==	PQ
);
static_assert
(	(	PQR
	and	PQ_nPnQ_nQR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQ_nPnQ_nQR
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PQ_nPnQ_nQR
	)
==	PnQR
);
static_assert
(	(	PnQR
	and	PQ_nPnQ_nQR
	)
==	PnQR
);
static_assert
(	(	PnQnR
	and	PQ_nPnQ_nQR
	)
==	F
);

static_assert
(	(	PR
	and	PQ_nPnQ_nQR
	)
==	PR
);
static_assert
(	(	PnR
	and	PQ_nPnQ_nQR
	)
==	PQnR
);

static_assert
(	(	nPQ
	and	PQ_nPnQ_nQR
	)
==	F
);
static_assert
(	(	nPQR
	and	PQ_nPnQ_nQR
	)
==	F
);
static_assert
(	(	nPQnR
	and	PQ_nPnQ_nQR
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQ_nPnQ_nQR
	)
==	nPnQ
);
static_assert
(	(	nPnQR
	and	PQ_nPnQ_nQR
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	PQ_nPnQ_nQR
	)
==	nPnQnR
);

static_assert
(	(	nPR
	and	PQ_nPnQ_nQR
	)
==	nPnQR
);
static_assert
(	(	nPnR
	and	PQ_nPnQ_nQR
	)
==	nPnQnR
);

static_assert
(	(	QR
	and	PQ_nPnQ_nQR
	)
==	PQR
);
static_assert
(	(	QnR
	and	PQ_nPnQ_nQR
	)
==	PQnR
);

static_assert
(	(	nQR
	and	PQ_nPnQ_nQR
	)
==	nQR
);
static_assert
(	(	nQnR
	and	PQ_nPnQ_nQR
	)
==	nPnQnR
);
