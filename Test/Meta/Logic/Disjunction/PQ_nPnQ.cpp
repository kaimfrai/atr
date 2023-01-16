import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.PQ_nPnQ;
import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.PQ_PR_nPnQ;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_nPnQ
///	********************************************************
static_assert
(	(	T
	or	PQ_nPnQ
	)
==	T
);
static_assert
(	(	F
	or	PQ_nPnQ
	)
==	PQ_nPnQ
);

static_assert
(	(	P
	or	PQ_nPnQ
	)
==	P_nQ
);
static_assert
(	(	nP
	or	PQ_nPnQ
	)
==	nP_Q
);

static_assert
(	(	Q
	or	PQ_nPnQ
	)
==	nP_Q
);
static_assert
(	(	nQ
	or	PQ_nPnQ
	)
==	P_nQ
);

static_assert
(	(	R
	or	PQ_nPnQ
	)
==	PQ_nPnQ_R
);
static_assert
(	(	nR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_nR
);

static_assert
(	(	PQ
	or	PQ_nPnQ
	)
==	PQ_nPnQ
);
static_assert
(	(	PQR
	or	PQ_nPnQ
	)
==	PQ_nPnQ
);
static_assert
(	(	PQnR
	or	PQ_nPnQ
	)
==	PQ_nPnQ
);

static_assert
(	(	PnQ
	or	PQ_nPnQ
	)
==	P_nQ
);
static_assert
(	(	PnQR
	or	PQ_nPnQ
	)
==	PQ_PR_nPnQ
);
static_assert
(	(	PnQnR
	or	PQ_nPnQ
	)
==	PQ_PnR_nPnQ
);

static_assert
(	(	PR
	or	PQ_nPnQ
	)
==	PQ_PR_nPnQ
);
static_assert
(	(	PnR
	or	PQ_nPnQ
	)
==	PQ_PnR_nPnQ
);

static_assert
(	(	nPQ
	or	PQ_nPnQ
	)
==	nP_Q
);
static_assert
(	(	nPQR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_QR
);
static_assert
(	(	nPQnR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_QnR
);

static_assert
(	(	nPnQ
	or	PQ_nPnQ
	)
==	PQ_nPnQ
);
static_assert
(	(	nPnQR
	or	PQ_nPnQ
	)
==	PQ_nPnQ
);
static_assert
(	(	nPnQnR
	or	PQ_nPnQ
	)
==	PQ_nPnQ
);

static_assert
(	(	nPR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_nPR
);
static_assert
(	(	nPnR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_nPnR
);

static_assert
(	(	QR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_QR
);
static_assert
(	(	QnR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_QnR
);

static_assert
(	(	nQR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_nQR
);
static_assert
(	(	nQnR
	or	PQ_nPnQ
	)
==	PQ_nPnQ_nQnR
);
