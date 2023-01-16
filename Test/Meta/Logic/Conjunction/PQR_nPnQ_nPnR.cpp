import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR;
import Test.Meta.Logic.Cache.PQR_PnQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Conjunction;

///	********************************************************
///	PQR_nPnQ_nPnR
///	********************************************************
static_assert
(	(	T
	and	PQR_nPnQ_nPnR
	)
==	PQR_nPnQ_nPnR
);
static_assert
(	(	F
	and	PQR_nPnQ_nPnR
	)
==	F
);

static_assert
(	(	P
	and	PQR_nPnQ_nPnR
	)
==	PQR
);
static_assert
(	(	nP
	and	PQR_nPnQ_nPnR
	)
==	nPnQ_nPnR
);

static_assert
(	(	Q
	and	PQR_nPnQ_nPnR
	)
==	PQR_nPQnR
);
static_assert
(	(	nQ
	and	PQR_nPnQ_nPnR
	)
==	nPnQ
);

static_assert
(	(	R
	and	PQR_nPnQ_nPnR
	)
==	PQR_nPnQR
);
static_assert
(	(	nR
	and	PQR_nPnQ_nPnR
	)
==	nPnR
);

static_assert
(	(	PQ
	and	PQR_nPnQ_nPnR
	)
==	PQR
);
static_assert
(	(	PQR
	and	PQR_nPnQ_nPnR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQR_nPnQ_nPnR
	)
==	F
);

static_assert
(	(	PnQ
	and	PQR_nPnQ_nPnR
	)
==	F
);
static_assert
(	(	PnQR
	and	PQR_nPnQ_nPnR
	)
==	F
);
static_assert
(	(	PnQnR
	and	PQR_nPnQ_nPnR
	)
==	F
);

static_assert
(	(	PR
	and	PQR_nPnQ_nPnR
	)
==	PQR
);
static_assert
(	(	PnR
	and	PQR_nPnQ_nPnR
	)
==	F
);

static_assert
(	(	nPQ
	and	PQR_nPnQ_nPnR
	)
==	nPQnR
);
static_assert
(	(	nPQR
	and	PQR_nPnQ_nPnR
	)
==	F
);
static_assert
(	(	nPQnR
	and	PQR_nPnQ_nPnR
	)
==	nPQnR
);

static_assert
(	(	nPnQ
	and	PQR_nPnQ_nPnR
	)
==	nPnQ
);
static_assert
(	(	nPnQR
	and	PQR_nPnQ_nPnR
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	PQR_nPnQ_nPnR
	)
==	nPnQnR
);

static_assert
(	(	nPR
	and	PQR_nPnQ_nPnR
	)
==	nPnQR
);
static_assert
(	(	nPnR
	and	PQR_nPnQ_nPnR
	)
==	nPnR
);

static_assert
(	(	QR
	and	PQR_nPnQ_nPnR
	)
==	PQR
);
static_assert
(	(	QnR
	and	PQR_nPnQ_nPnR
	)
==	nPQnR
);

static_assert
(	(	nQR
	and	PQR_nPnQ_nPnR
	)
==	nPnQR
);
static_assert
(	(	nQnR
	and	PQR_nPnQ_nPnR
	)
==	nPnQnR
);
