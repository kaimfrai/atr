import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.PQ_PR;
import Test.Meta.Logic.Cache.PQR_PnQnR;

///	********************************************************
///	PQ_nPnQ_R
///	********************************************************
static_assert
(	(	T
	and	PQ_nPnQ_R
	)
==	PQ_nPnQ_R
);
static_assert
(	(	F
	and	PQ_nPnQ_R
	)
==	F
);

static_assert
(	(	P
	and	PQ_nPnQ_R
	)
==	PQ_PR
);
static_assert
(	(	nP
	and	PQ_nPnQ_R
	)
==	nPnQ_nPR
);

static_assert
(	(	Q
	and	PQ_nPnQ_R
	)
==	PQ_QR
);
static_assert
(	(	nQ
	and	PQ_nPnQ_R
	)
==	nPnQ_nQR
);

static_assert
(	(	R
	and	PQ_nPnQ_R
	)
==	R
);
static_assert
(	(	nR
	and	PQ_nPnQ_R
	)
==	PQnR_nPnQnR
);

static_assert
(	(	PQ
	and	PQ_nPnQ_R
	)
==	PQ
);
static_assert
(	(	PQR
	and	PQ_nPnQ_R
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQ_nPnQ_R
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PQ_nPnQ_R
	)
==	PnQR
);
static_assert
(	(	PnQR
	and	PQ_nPnQ_R
	)
==	PnQR
);
static_assert
(	(	PnQnR
	and	PQ_nPnQ_R
	)
==	F
);

static_assert
(	(	PR
	and	PQ_nPnQ_R
	)
==	PR
);
static_assert
(	(	PnR
	and	PQ_nPnQ_R
	)
==	PQnR
);

static_assert
(	(	nPQ
	and	PQ_nPnQ_R
	)
==	nPQR
);
static_assert
(	(	nPQR
	and	PQ_nPnQ_R
	)
==	nPQR
);
static_assert
(	(	nPQnR
	and	PQ_nPnQ_R
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQ_nPnQ_R
	)
==	nPnQ
);
static_assert
(	(	nPnQR
	and	PQ_nPnQ_R
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	PQ_nPnQ_R
	)
==	nPnQnR
);

static_assert
(	(	nPR
	and	PQ_nPnQ_R
	)
==	nPR
);
static_assert
(	(	nPnR
	and	PQ_nPnQ_R
	)
==	nPnQnR
);

static_assert
(	(	QR
	and	PQ_nPnQ_R
	)
==	QR
);
static_assert
(	(	QnR
	and	PQ_nPnQ_R
	)
==	PQnR
);

static_assert
(	(	nQR
	and	PQ_nPnQ_R
	)
==	nQR
);
static_assert
(	(	nQnR
	and	PQ_nPnQ_R
	)
==	nPnQnR
);
