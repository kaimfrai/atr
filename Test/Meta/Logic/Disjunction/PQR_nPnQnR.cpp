import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.PQR_nPnQnR;
import Test.Meta.Logic.Cache.PQR_nPnQ;
import Test.Meta.Logic.Cache.PQ_nPR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Disjunction;

///	********************************************************
///	PQR_nPnQnR
///	********************************************************
static_assert
(	(	T
	or	PQR_nPnQnR
	)
==	T
);
static_assert
(	(	F
	or	PQR_nPnQnR
	)
==	PQR_nPnQnR
);

static_assert
(	(	P
	or	PQR_nPnQnR
	)
==	P_nQnR
);
static_assert
(	(	nP
	or	PQR_nPnQnR
	)
==	nP_QR
);

static_assert
(	(	Q
	or	PQR_nPnQnR
	)
==	nPnR_Q
);
static_assert
(	(	nQ
	or	PQR_nPnQnR
	)
==	PR_nQ
);

static_assert
(	(	R
	or	PQR_nPnQnR
	)
==	nPnQ_R
);
static_assert
(	(	nR
	or	PQR_nPnQnR
	)
==	PQ_nR
);

static_assert
(	(	PQ
	or	PQR_nPnQnR
	)
==	PQ_nPnQnR
);
static_assert
(	(	PQR
	or	PQR_nPnQnR
	)
==	PQR_nPnQnR
);
static_assert
(	(	PQnR
	or	PQR_nPnQnR
	)
==	PQ_nPnQnR
);

static_assert
(	(	PnQ
	or	PQR_nPnQnR
	)
==	PR_nQnR
);
static_assert
(	(	PnQR
	or	PQR_nPnQnR
	)
==	PR_nPnQnR
);
static_assert
(	(	PnQnR
	or	PQR_nPnQnR
	)
==	PQR_nQnR
);

static_assert
(	(	PR
	or	PQR_nPnQnR
	)
==	PR_nPnQnR
);
static_assert
(	(	PnR
	or	PQR_nPnQnR
	)
==	PQ_nQnR
);

static_assert
(	(	nPQ
	or	PQR_nPnQnR
	)
==	nPnR_QR
);
static_assert
(	(	nPQR
	or	PQR_nPnQnR
	)
==	nPnQnR_QR
);
static_assert
(	(	nPQnR
	or	PQR_nPnQnR
	)
==	PQR_nPnR
);

static_assert
(	(	nPnQ
	or	PQR_nPnQnR
	)
==	PQR_nPnQ
);
static_assert
(	(	nPnQR
	or	PQR_nPnQnR
	)
==	PQR_nPnQ
);
static_assert
(	(	nPnQnR
	or	PQR_nPnQnR
	)
==	PQR_nPnQnR
);

static_assert
(	(	nPR
	or	PQR_nPnQnR
	)
==	nPnQ_QR
);
static_assert
(	(	nPnR
	or	PQR_nPnQnR
	)
==	PQR_nPnR
);

static_assert
(	(	QR
	or	PQR_nPnQnR
	)
==	nPnQnR_QR
);
static_assert
(	(	QnR
	or	PQR_nPnQnR
	)
==	PQ_nPnR
);

static_assert
(	(	nQR
	or	PQR_nPnQnR
	)
==	PR_nPnQ
);
static_assert
(	(	nQnR
	or	PQR_nPnQnR
	)
==	PQR_nQnR
);
