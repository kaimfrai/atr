import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR_nQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQR_nPnQ_nPnR_nQnR
///	********************************************************
static_assert
(	(	T
	or	PQR_nPnQ_nPnR_nQnR
	)
==	T
);
static_assert
(	(	F
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);

static_assert
(	(	P
	or	PQR_nPnQ_nPnR_nQnR
	)
==	P_nQ_nR
);
static_assert
(	(	nP
	or	PQR_nPnQ_nPnR_nQnR
	)
==	nP_QR_nQnR
);

static_assert
(	(	Q
	or	PQR_nPnQ_nPnR_nQnR
	)
==	nP_Q_nR
);
static_assert
(	(	nQ
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PR_nPnR_nQ
);

static_assert
(	(	R
	or	PQR_nPnQ_nPnR_nQnR
	)
==	nP_nQ_R
);
static_assert
(	(	nR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQ_nPnQ_nR
);

static_assert
(	(	PQ
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQ_nPnQ_nR
);
static_assert
(	(	PQR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);
static_assert
(	(	PQnR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQ_nPnQ_nR
);

static_assert
(	(	PnQ
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PR_nPnR_nQ
);
static_assert
(	(	PnQR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PR_nPnR_nQ
);
static_assert
(	(	PnQnR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);

static_assert
(	(	PR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PR_nPnR_nQ
);
static_assert
(	(	PnR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQ_nPnQ_nR
);

static_assert
(	(	nPQ
	or	PQR_nPnQ_nPnR_nQnR
	)
==	nP_QR_nQnR
);
static_assert
(	(	nPQR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	nP_QR_nQnR
);
static_assert
(	(	nPQnR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);

static_assert
(	(	nPnQ
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);
static_assert
(	(	nPnQR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);
static_assert
(	(	nPnQnR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);

static_assert
(	(	nPR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	nP_QR_nQnR
);
static_assert
(	(	nPnR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);

static_assert
(	(	QR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	nP_QR_nQnR
);
static_assert
(	(	QnR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQ_nPnQ_nR
);

static_assert
(	(	nQR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PR_nPnR_nQ
);
static_assert
(	(	nQnR
	or	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);
