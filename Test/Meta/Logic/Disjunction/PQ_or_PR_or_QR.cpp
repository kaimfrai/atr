import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.PQ_PR_QR;
import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR_nQnR;

///	********************************************************
///	PQ_PR_QR
///	********************************************************
static_assert
(	(	T
	or	PQ_PR_QR
	)
==	T
);
static_assert
(	(	F
	or	PQ_PR_QR
	)
==	PQ_PR_QR
);

static_assert
(	(	P
	or	PQ_PR_QR
	)
==	P_QR
);
static_assert
(	(	nP
	or	PQ_PR_QR
	)
==	nP_Q_R
);

static_assert
(	(	Q
	or	PQ_PR_QR
	)
==	PR_Q
);
static_assert
(	(	nQ
	or	PQ_PR_QR
	)
==	P_nQ_R
);

static_assert
(	(	R
	or	PQ_PR_QR
	)
==	PQ_R
);
static_assert
(	(	nR
	or	PQ_PR_QR
	)
==	P_Q_nR
);

static_assert
(	(	PQ
	or	PQ_PR_QR
	)
==	PQ_PR_QR
);
static_assert
(	(	PQR
	or	PQ_PR_QR
	)
==	PQ_PR_QR
);
static_assert
(	(	PQnR
	or	PQ_PR_QR
	)
==	PQ_PR_QR
);

static_assert
(	(	PnQ
	or	PQ_PR_QR
	)
==	P_QR
);
static_assert
(	(	PnQR
	or	PQ_PR_QR
	)
==	PQ_PR_QR
);
static_assert
(	(	PnQnR
	or	PQ_PR_QR
	)
==	P_QR
);

static_assert
(	(	PR
	or	PQ_PR_QR
	)
==	PQ_PR_QR
);
static_assert
(	(	PnR
	or	PQ_PR_QR
	)
==	P_QR
);

static_assert
(	(	nPQ
	or	PQ_PR_QR
	)
==	PR_Q
);
static_assert
(	(	nPQR
	or	PQ_PR_QR
	)
==	PQ_PR_QR
);
static_assert
(	(	nPQnR
	or	PQ_PR_QR
	)
==	PR_Q
);

static_assert
(	(	nPnQ
	or	PQ_PR_QR
	)
==	PQ_nPnQ_R
);
static_assert
(	(	nPnQR
	or	PQ_PR_QR
	)
==	PQ_R
);
static_assert
(	(	nPnQnR
	or	PQ_PR_QR
	)
==	PQ_PR_nPnQnR_QR
);

static_assert
(	(	nPR
	or	PQ_PR_QR
	)
==	PQ_R
);
static_assert
(	(	nPnR
	or	PQ_PR_QR
	)
==	PR_nPnR_Q
);

static_assert
(	(	QR
	or	PQ_PR_QR
	)
==	PQ_PR_QR
);
static_assert
(	(	QnR
	or	PQ_PR_QR
	)
==	PR_Q
);

static_assert
(	(	nQR
	or	PQ_PR_QR
	)
==	PQ_R
);
static_assert
(	(	nQnR
	or	PQ_PR_QR
	)
==	P_QR_nQnR
);
