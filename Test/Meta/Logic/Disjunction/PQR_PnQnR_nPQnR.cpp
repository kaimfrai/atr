import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR;
import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.PQ_PR_QR;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR_nQnR;
import Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR_nPnQR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Disjunction;

///	********************************************************
///	PQR_PnQnR_nPQnR
///	********************************************************
static_assert
(	(	T
	or	PQR_PnQnR_nPQnR
	)
==	T
);
static_assert
(	(	F
	or	PQR_PnQnR_nPQnR
	)
==	PQR_PnQnR_nPQnR
);

static_assert
(	(	P
	or	PQR_PnQnR_nPQnR
	)
==	P_QnR
);
static_assert
(	(	nP
	or	PQR_PnQnR_nPQnR
	)
==	nP_QR_nQnR
);

static_assert
(	(	Q
	or	PQR_PnQnR_nPQnR
	)
==	PnR_Q
);
static_assert
(	(	nQ
	or	PQR_PnQnR_nPQnR
	)
==	PR_nPnR_nQ
);

static_assert
(	(	R
	or	PQR_PnQnR_nPQnR
	)
==	PnQ_nPQ_R
);
static_assert
(	(	nR
	or	PQR_PnQnR_nPQnR
	)
==	PQ_nR
);

static_assert
(	(	PQ
	or	PQR_PnQnR_nPQnR
	)
==	PQ_PnR_QnR
);
static_assert
(	(	PQR
	or	PQR_PnQnR_nPQnR
	)
==	PQR_PnQnR_nPQnR
);
static_assert
(	(	PQnR
	or	PQR_PnQnR_nPQnR
	)
==	PQ_PnR_QnR
);

static_assert
(	(	PR
	or	PQR_PnQnR_nPQnR
	)
==	PnQ_PR_nPQnR
);
static_assert
(	(	PnR
	or	PQR_PnQnR_nPQnR
	)
==	PQ_PnR_QnR
);

static_assert
(	(	PnQ
	or	PQR_PnQnR_nPQnR
	)
==	PnQ_PR_nPQnR
);
static_assert
(	(	PnQR
	or	PQR_PnQnR_nPQnR
	)
==	PnQ_PR_nPQnR
);
static_assert
(	(	PnQnR
	or	PQR_PnQnR_nPQnR
	)
==	PQR_PnQnR_nPQnR
);

static_assert
(	(	nPQ
	or	PQR_PnQnR_nPQnR
	)
==	PnQnR_nPQ_QR
);
static_assert
(	(	nPQR
	or	PQR_PnQnR_nPQnR
	)
==	PnQnR_nPQ_QR
);
static_assert
(	(	nPQnR
	or	PQR_PnQnR_nPQnR
	)
==	PQR_PnQnR_nPQnR
);

static_assert
(	(	nPnQ
	or	PQR_PnQnR_nPQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);
static_assert
(	(	nPnQR
	or	PQR_PnQnR_nPQnR
	)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(	nPnQnR
	or	PQR_PnQnR_nPQnR
	)
==	PQR_nPnR_nQnR
);

static_assert
(	(	nPR
	or	PQR_PnQnR_nPQnR
	)
==	PnQnR_nPQ_nPR_QR
);
static_assert
(	(	nPnR
	or	PQR_PnQnR_nPQnR
	)
==	PQR_nPnR_nQnR
);

static_assert
(	(	QR
	or	PQR_PnQnR_nPQnR
	)
==	PnQnR_nPQ_QR
);
static_assert
(	(	QnR
	or	PQR_PnQnR_nPQnR
	)
==	PQ_PnR_QnR
);
static_assert
(	(	nQR
	or	PQR_PnQnR_nPQnR
	)
==	PnQ_PR_nPQnR_nQR
);
static_assert
(	(	nQnR
	or	PQR_PnQnR_nPQnR
	)
==	PQR_nPnR_nQnR
);
