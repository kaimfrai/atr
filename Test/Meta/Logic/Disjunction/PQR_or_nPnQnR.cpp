import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_or_R;
import Test.Meta.Logic.Cache.PQR_or_nPnQnR;
import Test.Meta.Logic.Cache.PQR_or_nPnQ;
import Test.Meta.Logic.Cache.PQ_or_nPR;

///	********************************************************
///	PQR_or_nPnQnR
///	********************************************************
static_assert
(	(	T
	or	PQR_or_nPnQnR
	)
==	T
);
static_assert
(	(	F
	or	PQR_or_nPnQnR
	)
==	PQR_or_nPnQnR
);

static_assert
(	(	P
	or	PQR_or_nPnQnR
	)
==	P_or_nQnR
);
static_assert
(	(	nP
	or	PQR_or_nPnQnR
	)
==	nP_or_QR
);

static_assert
(	(	Q
	or	PQR_or_nPnQnR
	)
==	nPnR_or_Q
);
static_assert
(	(	nQ
	or	PQR_or_nPnQnR
	)
==	PR_or_nQ
);

static_assert
(	(	R
	or	PQR_or_nPnQnR
	)
==	nPnQ_or_R
);
static_assert
(	(	nR
	or	PQR_or_nPnQnR
	)
==	PQ_or_nR
);

static_assert
(	(	PQ
	or	PQR_or_nPnQnR
	)
==	PQ_or_nPnQnR
);
static_assert
(	(	PQR
	or	PQR_or_nPnQnR
	)
==	PQR_or_nPnQnR
);
static_assert
(	(	PQnR
	or	PQR_or_nPnQnR
	)
==	PQ_or_nPnQnR
);

static_assert
(	(	PnQ
	or	PQR_or_nPnQnR
	)
==	PR_or_nQnR
);
static_assert
(	(	PnQR
	or	PQR_or_nPnQnR
	)
==	PR_or_nPnQnR
);
static_assert
(	(	PnQnR
	or	PQR_or_nPnQnR
	)
==	PQR_or_nQnR
);

static_assert
(	(	PR
	or	PQR_or_nPnQnR
	)
==	PR_or_nPnQnR
);
static_assert
(	(	PnR
	or	PQR_or_nPnQnR
	)
==	PQ_or_nQnR
);

static_assert
(	(	nPQ
	or	PQR_or_nPnQnR
	)
==	nPnR_or_QR
);
static_assert
(	(	nPQR
	or	PQR_or_nPnQnR
	)
==	nPnQnR_or_QR
);
static_assert
(	(	nPQnR
	or	PQR_or_nPnQnR
	)
==	PQR_or_nPnR
);

static_assert
(	(	nPnQ
	or	PQR_or_nPnQnR
	)
==	PQR_or_nPnQ
);
static_assert
(	(	nPnQR
	or	PQR_or_nPnQnR
	)
==	PQR_or_nPnQ
);
static_assert
(	(	nPnQnR
	or	PQR_or_nPnQnR
	)
==	PQR_or_nPnQnR
);

static_assert
(	(	nPR
	or	PQR_or_nPnQnR
	)
==	nPnQ_or_QR
);
static_assert
(	(	nPnR
	or	PQR_or_nPnQnR
	)
==	PQR_or_nPnR
);

static_assert
(	(	QR
	or	PQR_or_nPnQnR
	)
==	nPnQnR_or_QR
);
static_assert
(	(	QnR
	or	PQR_or_nPnQnR
	)
==	PQ_or_nPnR
);

static_assert
(	(	nQR
	or	PQR_or_nPnQnR
	)
==	PR_or_nPnQ
);
static_assert
(	(	nQnR
	or	PQR_or_nPnQnR
	)
==	PQR_or_nQnR
);
