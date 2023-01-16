import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_PR_nPnQ;
import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_PR_nPnQ
///	PQ_nPnQ_nQR
///	********************************************************
static_assert
(	(	T
	or	PQ_PR_nPnQ
	)
==	T
);
static_assert
(	(	F
	or	PQ_PR_nPnQ
	)
==	PQ_PR_nPnQ
);

static_assert
(	(	P
	or	PQ_PR_nPnQ
	)
==	P_nQ
);
static_assert
(	(	nP
	or	PQ_PR_nPnQ
	)
==	nP_Q_R
);

static_assert
(	(	Q
	or	PQ_PR_nPnQ
	)
==	nP_Q_R
);
static_assert
(	(	nQ
	or	PQ_PR_nPnQ
	)
==	P_nQ
);

static_assert
(	(	R
	or	PQ_PR_nPnQ
	)
==	PQ_nPnQ_R
);
static_assert
(	(	nR
	or	PQ_PR_nPnQ
	)
==	P_nQ_nR
);

static_assert
(	(	PQ
	or	PQ_PR_nPnQ
	)
==	PQ_PR_nPnQ
);
static_assert
(	(	PQR
	or	PQ_PR_nPnQ
	)
==	PQ_PR_nPnQ
);
static_assert
(	(	PQnR
	or	PQ_PR_nPnQ
	)
==	PQ_PR_nPnQ
);

static_assert
(	(	PnQ
	or	PQ_PR_nPnQ
	)
==	P_nQ
);
static_assert
(	(	PnQR
	or	PQ_PR_nPnQ
	)
==	PQ_PR_nPnQ
);
static_assert
(	(	PnQnR
	or	PQ_PR_nPnQ
	)
==	P_nQ
);

static_assert
(	(	PR
	or	PQ_PR_nPnQ
	)
==	PQ_PR_nPnQ
);
static_assert
(	(	PnR
	or	PQ_PR_nPnQ
	)
==	P_nQ
);

static_assert
(	(	nPQ
	or	PQ_PR_nPnQ
	)
==	nP_Q_R
);
static_assert
(	(	nPQR
	or	PQ_PR_nPnQ
	)
==	PQ_nPnQ_R
);
static_assert
(	(	nPQnR
	or	PQ_PR_nPnQ
	)
==	PR_nPnQ_QnR
);

static_assert
(	(	nPnQ
	or	PQ_PR_nPnQ
	)
==	PQ_PR_nPnQ
);
static_assert
(	(	nPnQR
	or	PQ_PR_nPnQ
	)
==	PQ_nPnQ_nQR
);
static_assert
(	(	nPnQnR
	or	PQ_PR_nPnQ
	)
==	PQ_PR_nPnQ
);

static_assert
(	(	nPR
	or	PQ_PR_nPnQ
	)
==	PQ_nPnQ_R
);
static_assert
(	(	nPnR
	or	PQ_PR_nPnQ
	)
==	PQ_nPnR_nQR
);

static_assert
(	(	QR
	or	PQ_PR_nPnQ
	)
==	PQ_nPnQ_R
);
static_assert
(	(	QnR
	or	PQ_PR_nPnQ
	)
==	PR_nPnQ_QnR
);

static_assert
(	(	nQR
	or	PQ_PR_nPnQ
	)
==	PQ_nPnQ_nQR
);
static_assert
(	(	nQnR
	or	PQ_PR_nPnQ
	)
==	P_nQ
);
