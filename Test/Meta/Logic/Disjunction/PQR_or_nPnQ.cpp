import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.PQR_nPnQ;
import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.PQ_nPR;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR;
import Test.Meta.Logic.Cache.PQ_PR_nPnQ;

///	********************************************************
///	PQR_nPnQ
///	********************************************************
static_assert
(	(	T
	or	PQR_nPnQ
	)
==	T
);
static_assert
(	(	F
	or	PQR_nPnQ
	)
==	PQR_nPnQ
);

static_assert
(	(	P
	or	PQR_nPnQ
	)
==	P_nQ
);
static_assert
(	(	nP
	or	PQR_nPnQ
	)
==	nP_QR
);

static_assert
(	(	Q
	or	PQR_nPnQ
	)
==	nP_Q
);
static_assert
(	(	nQ
	or	PQR_nPnQ
	)
==	PR_nQ
);

static_assert
(	(	R
	or	PQR_nPnQ
	)
==	nPnQ_R
);
static_assert
(	(	nR
	or	PQR_nPnQ
	)
==	PQ_nPnQ_nR
);

static_assert
(	(	PQ
	or	PQR_nPnQ
	)
==	PQ_nPnQ
);
static_assert
(	(	PQR
	or	PQR_nPnQ
	)
==	PQR_nPnQ
);
static_assert
(	(	PQnR
	or	PQR_nPnQ
	)
==	PQ_nPnQ
);

static_assert
(	(	PnQ
	or	PQR_nPnQ
	)
==	PR_nQ
);
static_assert
(	(	PnQR
	or	PQR_nPnQ
	)
==	PR_nPnQ
);
static_assert
(	(	PnQnR
	or	PQR_nPnQ
	)
==	PQR_nPnQ_nQnR
);

static_assert
(	(	PR
	or	PQR_nPnQ
	)
==	PR_nPnQ
);
static_assert
(	(	PnR
	or	PQR_nPnQ
	)
==	PQ_PnR_nPnQ
);

static_assert
(	(	nPQ
	or	PQR_nPnQ
	)
==	nP_QR
);
static_assert
(	(	nPQR
	or	PQR_nPnQ
	)
==	nPnQ_QR
);
static_assert
(	(	nPQnR
	or	PQR_nPnQ
	)
==	PQR_nPnQ_nPnR
);

static_assert
(	(	nPnQ
	or	PQR_nPnQ
	)
==	PQR_nPnQ
);
static_assert
(	(	nPnQR
	or	PQR_nPnQ
	)
==	PQR_nPnQ
);
static_assert
(	(	nPnQnR
	or	PQR_nPnQ
	)
==	PQR_nPnQ
);

static_assert
(	(	nPR
	or	PQR_nPnQ
	)
==	nPnQ_QR
);
static_assert
(	(	nPnR
	or	PQR_nPnQ
	)
==	PQR_nPnQ_nPnR
);

static_assert
(	(	QR
	or	PQR_nPnQ
	)
==	nPnQ_QR
);
static_assert
(	(	QnR
	or	PQR_nPnQ
	)
==	PQ_nPnQ_QnR
);

static_assert
(	(	nQR
	or	PQR_nPnQ
	)
==	PR_nPnQ
);
static_assert
(	(	nQnR
	or	PQR_nPnQ
	)
==	PQR_nPnQ_nQnR
);
