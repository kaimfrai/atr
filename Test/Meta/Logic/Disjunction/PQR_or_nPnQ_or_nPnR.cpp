import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR;
import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.PQ_PR_nPnQ;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR_nQnR;

///	********************************************************
///	PQR_nPnQ_nPnR
///	********************************************************
static_assert
(	(	T
	or	PQR_nPnQ_nPnR
	)
==	T
);
static_assert
(	(	F
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR
);

static_assert
(	(	P
	or	PQR_nPnQ_nPnR
	)
==	P_nQ_nR
);
static_assert
(	(	nP
	or	PQR_nPnQ_nPnR
	)
==	nP_QR
);

static_assert
(	(	Q
	or	PQR_nPnQ_nPnR
	)
==	nP_Q
);
static_assert
(	(	nQ
	or	PQR_nPnQ_nPnR
	)
==	PR_nPnR_nQ
);

static_assert
(	(	R
	or	PQR_nPnQ_nPnR
	)
==	nP_R
);
static_assert
(	(	nR
	or	PQR_nPnQ_nPnR
	)
==	PQ_nPnQ_nR
);

static_assert
(	(	PQ
	or	PQR_nPnQ_nPnR
	)
==	PQ_nPnQ_nPnR
);
static_assert
(	(	PQR
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR
);
static_assert
(	(	PQnR
	or	PQR_nPnQ_nPnR
	)
==	PQ_nPnQ_nPnR
);

static_assert
(	(	PnQ
	or	PQR_nPnQ_nPnR
	)
==	PR_nPnR_nQ
);
static_assert
(	(	PnQR
	or	PQR_nPnQ_nPnR
	)
==	PR_nPnQ_nPnR
);
static_assert
(	(	PnQnR
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR_nQnR
);

static_assert
(	(	PR
	or	PQR_nPnQ_nPnR
	)
==	PR_nPnQ_nPnR
);
static_assert
(	(	PnR
	or	PQR_nPnQ_nPnR
	)
==	PQ_nPnQ_nR
);

static_assert
(	(	nPQ
	or	PQR_nPnQ_nPnR
	)
==	nP_QR
);
static_assert
(	(	nPQR
	or	PQR_nPnQ_nPnR
	)
==	nP_QR
);
static_assert
(	(	nPQnR
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR
);

static_assert
(	(	nPnQ
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR
);
static_assert
(	(	nPnQR
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR
);
static_assert
(	(	nPnQnR
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR
);

static_assert
(	(	nPR
	or	PQR_nPnQ_nPnR
	)
==	nP_QR
);
static_assert
(	(	nPnR
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR
);

static_assert
(	(	QR
	or	PQR_nPnQ_nPnR
	)
==	nP_QR
);
static_assert
(	(	QnR
	or	PQR_nPnQ_nPnR
	)
==	PQ_nPnQ_QnR
);

static_assert
(	(	nQR
	or	PQR_nPnQ_nPnR
	)
==	PR_nPnQ_nPnR
);
static_assert
(	(	nQnR
	or	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR_nQnR
);
