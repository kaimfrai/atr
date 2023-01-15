import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;
import Test.Meta.Logic.Cache.P_or_Q;
import Test.Meta.Logic.Cache.P_or_Q_or_R;
import Test.Meta.Logic.Cache.PQ_or_nPR_or_nQnR;
import Test.Meta.Logic.Cache.PQ_or_nPnQ_or_R;

///	********************************************************
///	PQ_or_PR_or_nPnQ
///	PQ_or_nPnQ_or_nQR
///	********************************************************
static_assert
(	(	T
	or	PQ_or_PR_or_nPnQ
	)
==	T
);
static_assert
(	(	F
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);

static_assert
(	(	P
	or	PQ_or_PR_or_nPnQ
	)
==	P_or_nQ
);
static_assert
(	(	nP
	or	PQ_or_PR_or_nPnQ
	)
==	nP_or_Q_or_R
);

static_assert
(	(	Q
	or	PQ_or_PR_or_nPnQ
	)
==	nP_or_Q_or_R
);
static_assert
(	(	nQ
	or	PQ_or_PR_or_nPnQ
	)
==	P_or_nQ
);

static_assert
(	(	R
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_nPnQ_or_R
);
static_assert
(	(	nR
	or	PQ_or_PR_or_nPnQ
	)
==	P_or_nQ_or_nR
);

static_assert
(	(	PQ
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(	PQR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(	PQnR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);

static_assert
(	(	PnQ
	or	PQ_or_PR_or_nPnQ
	)
==	P_or_nQ
);
static_assert
(	(	PnQR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(	PnQnR
	or	PQ_or_PR_or_nPnQ
	)
==	P_or_nQ
);

static_assert
(	(	PR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(	PnR
	or	PQ_or_PR_or_nPnQ
	)
==	P_or_nQ
);

static_assert
(	(	nPQ
	or	PQ_or_PR_or_nPnQ
	)
==	nP_or_Q_or_R
);
static_assert
(	(	nPQR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_nPnQ_or_R
);
static_assert
(	(	nPQnR
	or	PQ_or_PR_or_nPnQ
	)
==	PR_or_nPnQ_or_QnR
);

static_assert
(	(	nPnQ
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);
static_assert
(	(	nPnQR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_nPnQ_or_nQR
);
static_assert
(	(	nPnQnR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_PR_or_nPnQ
);

static_assert
(	(	nPR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_nPnQ_or_R
);
static_assert
(	(	nPnR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_nPnR_or_nQR
);

static_assert
(	(	QR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_nPnQ_or_R
);
static_assert
(	(	QnR
	or	PQ_or_PR_or_nPnQ
	)
==	PR_or_nPnQ_or_QnR
);

static_assert
(	(	nQR
	or	PQ_or_PR_or_nPnQ
	)
==	PQ_or_nPnQ_or_nQR
);
static_assert
(	(	nQnR
	or	PQ_or_PR_or_nPnQ
	)
==	P_or_nQ
);
