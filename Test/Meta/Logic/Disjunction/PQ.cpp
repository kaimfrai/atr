import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_or_Q;
import Test.Meta.Logic.Cache.PQ_or_PR;
import Test.Meta.Logic.Cache.PQ_or_R;
import Test.Meta.Logic.Cache.PQR_or_nPnQ;
import Test.Meta.Logic.Cache.PQ_or_nPnQ;
import Test.Meta.Logic.Cache.PQ_or_nPR;

///	********************************************************
///	PQ
///	********************************************************
static_assert
(	(	T
	and	PQ
	)
==	PQ
);
static_assert
(	(	F
	and	PQ
	)
==	F
);

static_assert
(	(	P
	or	PQ
	)
==	P
);
static_assert
(	(	nP
	or	PQ
	)
==	nP_or_Q
);

static_assert
(	(	Q
	or	PQ
	)
==	Q
);
static_assert
(	(	nQ
	or	PQ
	)
==	P_or_nQ
);

static_assert
(	(	R
	or	PQ
	)
==	PQ_or_R
);
static_assert
(	(	nR
	or	PQ
	)
==	PQ_or_nR
);

static_assert
(	(	PQ
	or	PQ
	)
==	PQ
);
static_assert
(	(	PQR
	or	PQ
	)
==	PQ
);
static_assert
(	(	PQnR
	or	PQ
	)
==	PQ
);

static_assert
(	(	PnQ
	or	PQ
	)
==	P
);
static_assert
(	(	PnQR
	or	PQ
	)
==	PQ_or_PR
);
static_assert
(	(	PnQnR
	or	PQ
	)
==	PQ_or_PnR
);

static_assert
(	(	PR
	or	PQ
	)
==	PQ_or_PR
);
static_assert
(	(	PnR
	or	PQ
	)
==	PQ_or_PnR
);

static_assert
(	(	nPQ
	or	PQ
	)
==	Q
);
static_assert
(	(	nPQR
	or	PQ
	)
==	PQ_or_QR
);
static_assert
(	(	nPQnR
	or	PQ
	)
==	PQ_or_QnR
);

static_assert
(	(	nPnQ
	or	PQ
	)
==	PQ_or_nPnQ
);
static_assert
(	(	nPnQR
	or	PQ
	)
==	PQ_or_nPnQR
);
static_assert
(	(	nPnQnR
	or	PQ
	)
==	PQ_or_nPnQnR
);

static_assert
(	(	nPR
	or	PQ
	)
==	PQ_or_nPR
);
static_assert
(	(	nPnR
	or	PQ
	)
==	PQ_or_nPnR
);

static_assert
(	(	QR
	or	PQ
	)
==	PQ_or_QR
);
static_assert
(	(	QnR
	or	PQ
	)
==	PQ_or_QnR
);

static_assert
(	(	nQR
	or	PQ
	)
==	PQ_or_nQR
);
static_assert
(	(	nQnR
	or	PQ
	)
==	PQ_or_nQnR
);
