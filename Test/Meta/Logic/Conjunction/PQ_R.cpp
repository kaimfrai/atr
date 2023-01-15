import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.PQ_R;
import Test.Meta.Logic.Cache.PQ_PR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Conjunction;

///	********************************************************
///	PQ_R
///	********************************************************
static_assert
(	(	T
	and	PQ_R
	)
==	PQ_R
);
static_assert
(	(	F
	and	PQ_R
	)
==	F
);

static_assert
(	(	P
	and	PQ_R
	)
==	PQ_PR
);
static_assert
(	(	nP
	and	PQ_R
	)
==	nPR
);

static_assert
(	(	Q
	and	PQ_R
	)
==	PQ_QR
);
static_assert
(	(	nQ
	and	PQ_R
	)
==	nQR
);

static_assert
(	(	R
	and	PQ_R
	)
==	R
);
static_assert
(	(	nR
	and	PQ_R
	)
==	PQnR
);

static_assert
(	(	PQ
	and	PQ_R
	)
==	PQ
);
static_assert
(	(	PQR
	and	PQ_R
	)
==	PQR
);
static_assert
(	(	PQnR
	and	PQ_R
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	PQ_R
	)
==	PnQR
);
static_assert
(	(	PnQR
	and	PQ_R
	)
==	PnQR
);
static_assert
(	(	PnQnR
	and	PQ_R
	)
==	F
);

static_assert
(	(	PR
	and	PQ_R
	)
==	PR
);
static_assert
(	(	PnR
	and	PQ_R
	)
==	PQnR
);

static_assert
(	(	nPQ
	and	PQ_R
	)
==	nPQR
);
static_assert
(	(	nPQR
	and	PQ_R
	)
==	nPQR
);
static_assert
(	(	nPQnR
	and	PQ_R
	)
==	F
);

static_assert
(	(	nPnQ
	and	PQ_R
	)
==	nPnQR
);
static_assert
(	(	nPnQR
	and	PQ_R
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	PQ_R
	)
==	F
);

static_assert
(	(	nPR
	and	PQ_R
	)
==	nPR
);
static_assert
(	(	nPnR
	and	PQ_R
	)
==	F
);

static_assert
(	(	QR
	and	PQ_R
	)
==	QR
);
static_assert
(	(	QnR
	and	PQ_R
	)
==	PQnR
);

static_assert
(	(	nQR
	and	PQ_R
	)
==	nQR
);
static_assert
(	(	nQnR
	and	PQ_R
	)
==	F
);
