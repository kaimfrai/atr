import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR;
import Test.Meta.Logic.Cache.P_or_Q;
import Test.Meta.Logic.Cache.P_or_Q_or_R;
import Test.Meta.Logic.Cache.PQ_or_R;
import Test.Meta.Logic.Cache.PQ_or_nPnQ_or_R;
import Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;
import Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR_or_nQnR;

///	********************************************************
///	PQR_or_nPnQ_or_nPnR
///	********************************************************
static_assert
(	(	T
	or	PQR_or_nPnQ_or_nPnR
	)
==	T
);
static_assert
(	(	F
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR
);

static_assert
(	(	P
	or	PQR_or_nPnQ_or_nPnR
	)
==	P_or_nQ_or_nR
);
static_assert
(	(	nP
	or	PQR_or_nPnQ_or_nPnR
	)
==	nP_or_QR
);

static_assert
(	(	Q
	or	PQR_or_nPnQ_or_nPnR
	)
==	nP_or_Q
);
static_assert
(	(	nQ
	or	PQR_or_nPnQ_or_nPnR
	)
==	PR_or_nPnR_or_nQ
);

static_assert
(	(	R
	or	PQR_or_nPnQ_or_nPnR
	)
==	nP_or_R
);
static_assert
(	(	nR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQ_or_nPnQ_or_nR
);

static_assert
(	(	PQ
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQ_or_nPnQ_or_nPnR
);
static_assert
(	(	PQR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR
);
static_assert
(	(	PQnR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQ_or_nPnQ_or_nPnR
);

static_assert
(	(	PnQ
	or	PQR_or_nPnQ_or_nPnR
	)
==	PR_or_nPnR_or_nQ
);
static_assert
(	(	PnQR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PR_or_nPnQ_or_nPnR
);
static_assert
(	(	PnQnR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);

static_assert
(	(	PR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PR_or_nPnQ_or_nPnR
);
static_assert
(	(	PnR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQ_or_nPnQ_or_nR
);

static_assert
(	(	nPQ
	or	PQR_or_nPnQ_or_nPnR
	)
==	nP_or_QR
);
static_assert
(	(	nPQR
	or	PQR_or_nPnQ_or_nPnR
	)
==	nP_or_QR
);
static_assert
(	(	nPQnR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR
);

static_assert
(	(	nPnQ
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR
);
static_assert
(	(	nPnQR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR
);
static_assert
(	(	nPnQnR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR
);

static_assert
(	(	nPR
	or	PQR_or_nPnQ_or_nPnR
	)
==	nP_or_QR
);
static_assert
(	(	nPnR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR
);

static_assert
(	(	QR
	or	PQR_or_nPnQ_or_nPnR
	)
==	nP_or_QR
);
static_assert
(	(	QnR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQ_or_nPnQ_or_QnR
);

static_assert
(	(	nQR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PR_or_nPnQ_or_nPnR
);
static_assert
(	(	nQnR
	or	PQR_or_nPnQ_or_nPnR
	)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
