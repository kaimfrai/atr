import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_nPR_nQnR
///	PnR_nPnQ_QR
///	********************************************************
static_assert
(	(	T
	or	PQ_nPR_nQnR
	)
==	T
);
static_assert
(	(	F
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	P
	or	PQ_nPR_nQnR
	)
==	P_nQ_R
);
static_assert
(	(	nP
	or	PQ_nPR_nQnR
	)
==	nP_Q_nR
);

static_assert
(	(	Q
	or	PQ_nPR_nQnR
	)
==	nP_Q_nR
);
static_assert
(	(	nQ
	or	PQ_nPR_nQnR
	)
==	P_nQ_R
);

static_assert
(	(	R
	or	PQ_nPR_nQnR
	)
==	P_nQ_R
);
static_assert
(	(	nR
	or	PQ_nPR_nQnR
	)
==	nP_Q_nR
);

static_assert
(	(	PQ
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	PQR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	PQnR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	PnQ
	or	PQ_nPR_nQnR
	)
==	P_nQ_R
);

static_assert
(	(	PnQR
	or	PQ_nPR_nQnR
	)
==	P_nQ_R
);
static_assert
(	(	PnQnR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	PR
	or	PQ_nPR_nQnR
	)
==	P_nQ_R
);
static_assert
(	(	PnR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	nPQ
	or	PQ_nPR_nQnR
	)
==	nP_Q_nR
);
static_assert
(	(	nPQR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	nPQnR
	or	PQ_nPR_nQnR
	)
==	nP_Q_nR
);

static_assert
(	(	nPnQ
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	nPnQR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	nPnQnR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	nPR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	nPnR
	or	PQ_nPR_nQnR
	)
==	nP_Q_nR
);

static_assert
(	(	QR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	QnR
	or	PQ_nPR_nQnR
	)
==	nP_Q_nR
);

static_assert
(	(	nQR
	or	PQ_nPR_nQnR
	)
==	P_nQ_R
);
static_assert
(	(	nQnR
	or	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
