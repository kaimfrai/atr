import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.PQ_PR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Conjunction;

///	********************************************************
///	PQ_nPR_nQnR
///	PnR_nPnQ_QR
///	********************************************************
static_assert
(	(	T
	and	PnR_nPnQ_QR
	)
==	PQ_nPR_nQnR
);
static_assert
(	(	F
	and	PnR_nPnQ_QR
	)
==	F
);

static_assert
(	(	P
	and	PnR_nPnQ_QR
	)
==	PQ_PnR
);
static_assert
(	(	nP
	and	PnR_nPnQ_QR
	)
==	nPnQ_nPR
);

static_assert
(	(	Q
	and	PnR_nPnQ_QR
	)
==	PQ_QR
);
static_assert
(	(	nQ
	and	PnR_nPnQ_QR
	)
==	nPnQ_nQnR
);

static_assert
(	(	R
	and	PnR_nPnQ_QR
	)
==	nPR_QR
);
static_assert
(	(	nR
	and	PnR_nPnQ_QR
	)
==	PnR_nQnR
);

static_assert
(	(	PQ
	and	PnR_nPnQ_QR
	)
==	PQ
);
static_assert
(	(	PQR
	and	PnR_nPnQ_QR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PnR_nPnQ_QR
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PnR_nPnQ_QR
	)
==	PnQnR
);
static_assert
(	(	PnQR
	and	PnR_nPnQ_QR
	)
==	F
);
static_assert
(	(	PnQnR
	and	PnR_nPnQ_QR
	)
==	PnQnR
);

static_assert
(	(	PR
	and	PnR_nPnQ_QR
	)
==	PQR
);
static_assert
(	(	PnR
	and	PnR_nPnQ_QR
	)
==	PnR
);

static_assert
(	(	nPQ
	and	PnR_nPnQ_QR
	)
==	nPQR
);
static_assert
(	(	nPQR
	and	PnR_nPnQ_QR
	)
==	nPQR
);
static_assert
(	(	nPQnR
	and	PnR_nPnQ_QR
	)
==	F
);

static_assert
(	(	nPnQ
	and	PnR_nPnQ_QR
	)
==	nPnQ
);
static_assert
(	(	nPnQR
	and	PnR_nPnQ_QR
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	PnR_nPnQ_QR
	)
==	nPnQnR
);

static_assert
(	(	nPR
	and	PnR_nPnQ_QR
	)
==	nPR
);
static_assert
(	(	nPnR
	and	PnR_nPnQ_QR
	)
==	nPnQnR
);

static_assert
(	(	nQR
	and	PnR_nPnQ_QR
	)
==	nPnQR
);
static_assert
(	(	nQnR
	and	PnR_nPnQ_QR
	)
==	nQnR
);

static_assert
(	(	QR
	and	PnR_nPnQ_QR
	)
==	QR
);
static_assert
(	(	QnR
	and	PnR_nPnQ_QR
	)
==	PQnR
);
