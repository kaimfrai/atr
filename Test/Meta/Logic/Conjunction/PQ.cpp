import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;

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
	and	PQ
	)
==	PQ
);
static_assert
(	(	nP
	and	PQ
	)
==	F
);

static_assert
(	(	Q
	and	PQ
	)
==	PQ
);
static_assert
(	(	nQ
	and	PQ
	)
==	F
);

static_assert
(	(	R
	and	PQ
	)
==	PQR
);
static_assert
(	(	nR
	and	PQ
	)
==	PQnR
);

static_assert
(	(	PQ
	and	PQ
	)
==	PQ
);
static_assert
(	(	PQR
	and	PQ
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQ
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PQ
	)
==	F
);
static_assert
(	(	PnQR
	and	PQ
	)
==	F
);
static_assert
(	(	PnQnR
	and	PQ
	)
==	F
);

static_assert
(	(	PR
	and	PQ
	)
==	PQR
);
static_assert
(	(	PnR
	and	PQ
	)
==	PQnR
);

static_assert
(	(	nPQ
	and	PQ
	)
==	F
);
static_assert
(	(	nPQR
	and	PQ
	)
==	F
);
static_assert
(	(	nPQnR
	and	PQ
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQ
	)
==	F
);
static_assert
(	(	nPnQR
	and	PQ
	)
==	F
);
static_assert
(	(	nPnQnR
	and	PQ
	)
==	F
);

static_assert
(	(	nPR
	and	PQ
	)
==	F
);
static_assert
(	(	nPnR
	and	PQ
	)
==	F
);

static_assert
(	(	QR
	and	PQ
	)
==	PQR
);
static_assert
(	(	QnR
	and	PQ
	)
==	PQnR
);

static_assert
(	(	nQR
	and	PQ
	)
==	F
);
static_assert
(	(	nQnR
	and	PQ
	)
==	F
);
