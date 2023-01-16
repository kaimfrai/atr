import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR_nPnQR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Conjunction;

///	********************************************************
///	PQR_PnQnR_nPQnR_nPnQR
///	********************************************************
static_assert
(	(	T
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(	F
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	F
);

static_assert
(	(	P
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PQR_PnQnR
);
static_assert
(	(	nP
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	nPQnR_nPnQR
);

static_assert
(	(	Q
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PQR_nPQnR
);
static_assert
(	(	nQ
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PnQnR_nPnQR
);

static_assert
(	(	R
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PQR_nPnQR
);
static_assert
(	(	nR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PnQnR_nPQnR
);

static_assert
(	(	PQ
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PQR
);
static_assert
(	(	PQR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	F
);

static_assert
(	(	PnQ
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PnQnR
);
static_assert
(	(	PnQR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	F
);
static_assert
(	(	PnQnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PnQnR
);

static_assert
(	(	PR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PQR
);
static_assert
(	(	PnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PnQnR
);

static_assert
(	(	nPQ
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	nPQnR
);
static_assert
(	(	nPQR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	F
);
static_assert
(	(	nPQnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	nPQnR
);

static_assert
(	(	nPnQ
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	nPnQR
);
static_assert
(	(	PnQnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PnQnR
);
static_assert
(	(	nPnQnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	F
);

static_assert
(	(	nPR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	nPnQR
);
static_assert
(	(	nPnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	nPQnR
);

static_assert
(	(	QR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PQR
);
static_assert
(	(	QnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	nPQnR
);

static_assert
(	(	nQR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	nPnQR
);
static_assert
(	(	nQnR
	and	PQR_PnQnR_nPQnR_nPnQR
	)
==	PnQnR
);
