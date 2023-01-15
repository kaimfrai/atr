import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR_nQnR;
import Test.Meta.Logic.Cache.PQR_PnQnR;

///	********************************************************
///	PQR_nPnQ_nPnR_nQnR
///	********************************************************
static_assert
(	(	T
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQ_nPnR_nQnR
);
static_assert
(	(	F
	and	PQR_nPnQ_nPnR_nQnR
	)
==	F
);

static_assert
(	(	P
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_PnQnR
);
static_assert
(	(	nP
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnQ_nPnR
);

static_assert
(	(	Q
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPQnR
);
static_assert
(	(	nQ
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnQ_nQnR
);

static_assert
(	(	R
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PQR_nPnQR
);
static_assert
(	(	nR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnR_nQnR
);

static_assert
(	(	PQ
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PQR
);
static_assert
(	(	PQR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	F
);

static_assert
(	(	PnQ
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PnQnR
);
static_assert
(	(	PnQR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	F
);
static_assert
(	(	PnQnR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PnQnR
);

static_assert
(	(	PR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PQR
);
static_assert
(	(	PnR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PnQnR
);

static_assert
(	(	nPQ
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPQnR
);
static_assert
(	(	nPQR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	F
);
static_assert
(	(	nPQnR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPQnR
);

static_assert
(	(	nPnQ
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnQ
);
static_assert
(	(	nPnQR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnQnR
);

static_assert
(	(	nPR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnQR
);
static_assert
(	(	nPnR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnR
);

static_assert
(	(	QR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	PQR
);
static_assert
(	(	QnR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPQnR
);

static_assert
(	(	nQR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nPnQR
);
static_assert
(	(	nQnR
	and	PQR_nPnQ_nPnR_nQnR
	)
==	nQnR
);
