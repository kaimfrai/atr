import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.PQ_PR;

///	********************************************************
///	PQ_nPR_nQnR
///	PnR_nPnQ_QR
///	********************************************************
static_assert
(	(	T
	and	PQ_nPR_nQnR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	F
	and	PQ_nPR_nQnR
	)
==	F
);

static_assert
(	(	P
	and	PQ_nPR_nQnR
	)
==	PQ_PnR
);
static_assert
(	(	nP
	and	PQ_nPR_nQnR
	)
==	nPnQ_nPR
);

static_assert
(	(	Q
	and	PQ_nPR_nQnR
	)
==	PQ_QR
);
static_assert
(	(	nQ
	and	PQ_nPR_nQnR
	)
==	nPnQ_nQnR
);

static_assert
(	(	R
	and	PQ_nPR_nQnR
	)
==	nPR_QR
);
static_assert
(	(	nR
	and	PQ_nPR_nQnR
	)
==	PnR_nQnR
);

static_assert
(	(	PQ
	and	PQ_nPR_nQnR
	)
==	PQ
);
static_assert
(	(	PQR
	and	PQ_nPR_nQnR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQ_nPR_nQnR
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PQ_nPR_nQnR
	)
==	PnQnR
);
static_assert
(	(	PnQR
	and	PQ_nPR_nQnR
	)
==	F
);
static_assert
(	(	PnQnR
	and	PQ_nPR_nQnR
	)
==	PnQnR
);

static_assert
(	(	PR
	and	PQ_nPR_nQnR
	)
==	PQR
);
static_assert
(	(	PnR
	and	PQ_nPR_nQnR
	)
==	PnR
);

static_assert
(	(	nPQ
	and	PQ_nPR_nQnR
	)
==	nPQR
);
static_assert
(	(	nPQR
	and	PQ_nPR_nQnR
	)
==	nPQR
);
static_assert
(	(	nPQnR
	and	PQ_nPR_nQnR
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQ_nPR_nQnR
	)
==	nPnQ
);
static_assert
(	(	nPnQR
	and	PQ_nPR_nQnR
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	PQ_nPR_nQnR
	)
==	nPnQnR
);

static_assert
(	(	nPR
	and	PQ_nPR_nQnR
	)
==	nPR
);
static_assert
(	(	nPnR
	and	PQ_nPR_nQnR
	)
==	nPnQnR
);

static_assert
(	(	nQR
	and	PQ_nPR_nQnR
	)
==	nPnQR
);
static_assert
(	(	nQnR
	and	PQ_nPR_nQnR
	)
==	nQnR
);

static_assert
(	(	QR
	and	PQ_nPR_nQnR
	)
==	QR
);
static_assert
(	(	QnR
	and	PQ_nPR_nQnR
	)
==	PQnR
);
