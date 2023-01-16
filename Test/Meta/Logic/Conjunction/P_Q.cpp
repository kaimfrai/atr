import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.PQ_PR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Conjunction;

///	********************************************************
///	P_Q
///	********************************************************
static_assert
(	(	T
	and	P_Q
	)
==	P_Q
);
static_assert
(	(	F
	and	P_Q
	)
==	F
);

static_assert
(	(	P
	and	P_Q
	)
==	P
);
static_assert
(	(	nP
	and	P_Q
	)
==	nPQ
);

static_assert
(	(	Q
	and	P_Q
	)
==	Q
);
static_assert
(	(	nQ
	and	P_Q
	)
==	PnQ
);

static_assert
(	(	R
	and	P_Q
	)
==	PR_QR
);
static_assert
(	(	nR
	and	P_Q
	)
==	PnR_QnR
);

static_assert
(	(	PQ
	and	P_Q
	)
==	PQ
);
static_assert
(	(	PQR
	and	P_Q
	)
==	PQR
);
static_assert
(	(	PQnR
	and	P_Q
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	P_Q
	)
==	PnQ
);
static_assert
(	(	PnQR
	and	P_Q
	)
==	PnQR
);
static_assert
(	(	PnQnR
	and	P_Q
	)
==	PnQnR
);

static_assert
(	(	PR
	and	P_Q
	)
==	PR
);
static_assert
(	(	PnR
	and	P_Q
	)
==	PnR
);

static_assert
(	(	nPQ
	and	P_Q
	)
==	nPQ
);
static_assert
(	(	nPQR
	and	P_Q
	)
==	nPQR
);
static_assert
(	(	nPQnR
	and	P_Q
	)
==	nPQnR
);

static_assert
(	(	nPnQ
	and	P_Q
	)
==	F
);
static_assert
(	(	nPnQR
	and	P_Q
	)
==	F
);
static_assert
(	(	nPnQnR
	and	P_Q
	)
==	F
);

static_assert
(	(	nPR
	and	P_Q
	)
==	nPQR
);
static_assert
(	(	nPnR
	and	P_Q
	)
==	nPQnR
);

static_assert
(	(	QR
	and	P_Q
	)
==	QR
);
static_assert
(	(	QnR
	and	P_Q
	)
==	QnR
);

static_assert
(	(	nQR
	and	P_Q
	)
==	PnQR
);
static_assert
(	(	nQnR
	and	P_Q
	)
==	PnQnR
);
