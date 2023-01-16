import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.PQ_PR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Conjunction;

///	********************************************************
///	P_Q_R
///	********************************************************
static_assert
(	(	T
	and	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	F
	and	P_Q_R
	)
==	F
);

static_assert
(	(	P
	and	P_Q_R
	)
==	P
);
static_assert
(	(	nP
	and	P_Q_R
	)
==	nPQ_nPR
);

static_assert
(	(	Q
	and	P_Q_R
	)
==	Q
);
static_assert
(	(	nQ
	and	P_Q_R
	)
==	PnQ_nQR
);

static_assert
(	(	R
	and	P_Q_R
	)
==	R
);
static_assert
(	(	nR
	and	P_Q_R
	)
==	PnR_QnR
);

static_assert
(	(	PQ
	and	P_Q_R
	)
==	PQ
);
static_assert
(	(	PQR
	and	P_Q_R
	)
==	PQR
);
static_assert
(	(	PQnR
	and	P_Q_R
	)
==	PQnR
);

static_assert
(	(	PnQ
	and	P_Q_R
	)
==	PnQ
);
static_assert
(	(	PnQR
	and	P_Q_R
	)
==	PnQR
);
static_assert
(	(	PnQnR
	and	P_Q_R
	)
==	PnQnR
);

static_assert
(	(	PR
	and	P_Q_R
	)
==	PR
);
static_assert
(	(	PnR
	and	P_Q_R
	)
==	PnR
);

static_assert
(	(	nPQ
	and	P_Q_R
	)
==	nPQ
);
static_assert
(	(	nPQR
	and	P_Q_R
	)
==	nPQR
);
static_assert
(	(	nPQnR
	and	P_Q_R
	)
==	nPQnR
);

static_assert
(	(	nPnQ
	and	P_Q_R
	)
==	nPnQR
);
static_assert
(	(	nPnQR
	and	P_Q_R
	)
==	nPnQR
);
static_assert
(	(	nPnQnR
	and	P_Q_R
	)
==	F
);

static_assert
(	(	nPR
	and	P_Q_R
	)
==	nPR
);
static_assert
(	(	nPnR
	and	P_Q_R
	)
==	nPQnR
);

static_assert
(	(	QR
	and	P_Q_R
	)
==	QR
);
static_assert
(	(	QnR
	and	P_Q_R
	)
==	QnR
);

static_assert
(	(	nQR
	and	P_Q_R
	)
==	nQR
);
static_assert
(	(	nQnR
	and	P_Q_R
	)
==	PnQnR
);
