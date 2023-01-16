import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.PQ_nPR;
import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.PQ_PR_nPnQ;
import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_nPR
///	********************************************************
static_assert
(	(	T
	or	PQ_nPR
	)
==	T
);
static_assert
(	(	F
	or	PQ_nPR
	)
==	PQ_nPR
);

static_assert
(	(	P
	or	PQ_nPR
	)
==	P_R
);
static_assert
(	(	nP
	or	PQ_nPR
	)
==	nP_Q
);

static_assert
(	(	Q
	or	PQ_nPR
	)
==	nPR_Q
);
static_assert
(	(	nQ
	or	PQ_nPR
	)
==	P_nQ_R
);

static_assert
(	(	R
	or	PQ_nPR
	)
==	PQ_R
);
static_assert
(	(	nR
	or	PQ_nPR
	)
==	nP_Q_nR
);

static_assert
(	(	PQ
	or	PQ_nPR
	)
==	PQ_nPR
);
static_assert
(	(	PQR
	or	PQ_nPR
	)
==	PQ_nPR
);
static_assert
(	(	PQnR
	or	PQ_nPR
	)
==	PQ_nPR
);

static_assert
(	(	PnQ
	or	PQ_nPR
	)
==	P_R
);

static_assert
(	(	PnQR
	or	PQ_nPR
	)
==	PQ_R
);
static_assert
(	(	PnQnR
	or	PQ_nPR
	)
==	PQ_PnR_nPR
);

static_assert
(	(	PR
	or	PQ_nPR
	)
==	PQ_R
);
static_assert
(	(	PnR
	or	PQ_nPR
	)
==	PQ_PnR_nPR
);

static_assert
(	(	nPQ
	or	PQ_nPR
	)
==	nPR_Q
);
static_assert
(	(	nPQR
	or	PQ_nPR
	)
==	PQ_nPR
);
static_assert
(	(	nPQnR
	or	PQ_nPR
	)
==	nPR_Q
);

static_assert
(	(	nPnQ
	or	PQ_nPR
	)
==	PQ_nPnQ_nPR
);
static_assert
(	(	nPnQR
	or	PQ_nPR
	)
==	PQ_nPR
);
static_assert
(	(	nPnQnR
	or	PQ_nPR
	)
==	PQ_nPnQ_nPR
);

static_assert
(	(	nPR
	or	PQ_nPR
	)
==	PQ_nPR
);
static_assert
(	(	nPnR
	or	PQ_nPR
	)
==	nP_Q
);

static_assert
(	(	QR
	or	PQ_nPR
	)
==	PQ_nPR
);
static_assert
(	(	QnR
	or	PQ_nPR
	)
==	nPR_Q
);

static_assert
(	(	nQR
	or	PQ_nPR
	)
==	PQ_R
);
static_assert
(	(	nQnR
	or	PQ_nPR
	)
==	PQ_nPR_nQnR
);
