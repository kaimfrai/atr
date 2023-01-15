import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.PQ_PR;
import Test.Meta.Logic.Cache.PQR_PnQnR;
import Test.Meta.Logic.Cache.PQR_nPnQ;
import Test.Meta.Logic.Cache.PQR_nPnQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Disjunction;

///	********************************************************
///	PQR
///	********************************************************
static_assert
(	(	T
	or	PQR
	)
==	T
);
static_assert
(	(	F
	or	PQR
	)
==	PQR
);

static_assert
(	(	P
	or	PQR
	)
==	P
);
static_assert
(	(	nP
	or	PQR
	)
==	nP_QR
);

static_assert
(	(	Q
	or	PQR
	)
==	Q
);
static_assert
(	(	nQ
	or	PQR
	)
==	PR_nQ
);

static_assert
(	(	R
	or	PQR
	)
==	R
);
static_assert
(	(	nR
	or	PQR
	)
==	PQ_nR
);

static_assert
(	(	PQ
	or	PQR
	)
==	PQ
);
static_assert
(	(	PQR
	or	PQR
	)
==	PQR
);
static_assert
(	(	PQnR
	or	PQR
	)
==	PQ
);

static_assert
(	(	PnQ
	or	PQR
	)
==	PnQ_PR
);
static_assert
(	(	PnQR
	or	PQR
	)
==	PR
);
static_assert
(	(	PnQnR
	or	PQR
	)
==	PQR_PnQnR
);

static_assert
(	(	PR
	or	PQR
	)
==	PR
);
static_assert
(	(	PnR
	or	PQR
	)
==	PQ_PnR
);

static_assert
(	(	nPQ
	or	PQR
	)
==	nPQ_QR
);
static_assert
(	(	nPQR
	or	PQR
	)
==	QR
);
static_assert
(	(	nPQnR
	or	PQR
	)
==	PQR_nPQnR
);

static_assert
(	(	nPnQ
	or	PQR
	)
==	PQR_nPnQ
);
static_assert
(	(	nPnQR
	or	PQR
	)
==	PQR_nPnQR
);
static_assert
(	(	nPnQnR
	or	PQR
	)
==	PQR_nPnQnR
);

static_assert
(	(	nPR
	or	PQR
	)
==	nPR_QR
);
static_assert
(	(	nPnR
	or	PQR
	)
==	PQR_nPnR
);

static_assert
(	(	QR
	or	PQR
	)
==	QR
);
static_assert
(	(	QnR
	or	PQR
	)
==	PQ_QnR
);

static_assert
(	(	nQR
	or	PQR
	)
==	PR_nQR
);
static_assert
(	(	nQnR
	or	PQR
	)
==	PQR_nQnR
);
