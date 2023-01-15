import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQR_or_PnQnR;

///	********************************************************
///	PQR_or_PnQnR
///	********************************************************
static_assert
(	(	T
	and	PQR_or_PnQnR
	)
==	PQR_or_PnQnR
);
static_assert
(	(	F
	and	PQR_or_PnQnR
	)
==	F
);

static_assert
(	(	P
	and	PQR_or_PnQnR
	)
==	PQR_or_PnQnR
);
static_assert
(	(	nP
	and	PQR_or_PnQnR
	)
==	F
);

static_assert
(	(	Q
	and	PQR_or_PnQnR
	)
==	PQR
);
static_assert
(	(	nQ
	and	PQR_or_PnQnR
	)
==	PnQnR
);

static_assert
(	(	R
	and	PQR_or_PnQnR
	)
==	PQR
);
static_assert
(	(	nR
	and	PQR_or_PnQnR
	)
==	PnQnR
);

static_assert
(	(	PQ
	and	PQR_or_PnQnR
	)
==	PQR
);
static_assert
(	(	PQR
	and	PQR_or_PnQnR
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQR_or_PnQnR
	)
==	F
);

static_assert
(	(	PnQ
	and	PQR_or_PnQnR
	)
==	PnQnR
);
static_assert
(	(	PnQR
	and	PQR_or_PnQnR
	)
==	F
);
static_assert
(	(	PnQnR
	and	PQR_or_PnQnR
	)
==	PnQnR
);

static_assert
(	(	PR
	and	PQR_or_PnQnR
	)
==	PQR
);
static_assert
(	(	PnR
	and	PQR_or_PnQnR
	)
==	PnQnR
);

static_assert
(	(	nPQ
	and	PQR_or_PnQnR
	)
==	F
);
static_assert
(	(	nPQR
	and	PQR_or_PnQnR
	)
==	F
);
static_assert
(	(	nPQnR
	and	PQR_or_PnQnR
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQR_or_PnQnR
	)
==	F
);
static_assert
(	(	PnQnR
	and	PQR_or_PnQnR
	)
==	PnQnR
);
static_assert
(	(	nPnQnR
	and	PQR_or_PnQnR
	)
==	F
);

static_assert
(	(	nPR
	and	PQR_or_PnQnR
	)
==	F
);
static_assert
(	(	nPnR
	and	PQR_or_PnQnR
	)
==	F
);

static_assert
(	(	QR
	and	PQR_or_PnQnR
	)
==	PQR
);
static_assert
(	(	QnR
	and	PQR_or_PnQnR
	)
==	F
);

static_assert
(	(	nQR
	and	PQR_or_PnQnR
	)
==	F
);
static_assert
(	(	nQnR
	and	PQR_or_PnQnR
	)
==	PnQnR
);
