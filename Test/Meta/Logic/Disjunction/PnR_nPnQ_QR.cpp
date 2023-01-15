import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Disjunction;

///	********************************************************
///	PQ_nPR_nQnR
///	PnR_nPnQ_QR
///	********************************************************
static_assert
(	(	T
	or	PnR_nPnQ_QR
	)
==	T
);
static_assert
(	(	F
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	P
	or	PnR_nPnQ_QR
	)
==	P_nQ_R
);
static_assert
(	(	nP
	or	PnR_nPnQ_QR
	)
==	nP_Q_nR
);

static_assert
(	(	Q
	or	PnR_nPnQ_QR
	)
==	nP_Q_nR
);
static_assert
(	(	nQ
	or	PnR_nPnQ_QR
	)
==	P_nQ_R
);

static_assert
(	(	R
	or	PnR_nPnQ_QR
	)
==	P_nQ_R
);
static_assert
(	(	nR
	or	PnR_nPnQ_QR
	)
==	nP_Q_nR
);

static_assert
(	(	PQ
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	PQR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	PQnR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	PnQ
	or	PnR_nPnQ_QR
	)
==	P_nQ_R
);

static_assert
(	(	PnQR
	or	PnR_nPnQ_QR
	)
==	P_nQ_R
);
static_assert
(	(	PnQnR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	PR
	or	PnR_nPnQ_QR
	)
==	P_nQ_R
);
static_assert
(	(	PnR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	nPQ
	or	PnR_nPnQ_QR
	)
==	nP_Q_nR
);
static_assert
(	(	nPQR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	nPQnR
	or	PnR_nPnQ_QR
	)
==	nP_Q_nR
);

static_assert
(	(	nPnQ
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	nPnQR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	nPnQnR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);

static_assert
(	(	nPR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	nPnR
	or	PnR_nPnQ_QR
	)
==	nP_Q_nR
);

static_assert
(	(	QR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	QnR
	or	PnR_nPnQ_QR
	)
==	nP_Q_nR
);

static_assert
(	(	nQR
	or	PnR_nPnQ_QR
	)
==	P_nQ_R
);
static_assert
(	(	nQnR
	or	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
