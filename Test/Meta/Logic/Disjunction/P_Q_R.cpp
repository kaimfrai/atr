import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.P_Q_R;

///	********************************************************
///	P_Q_R
///	********************************************************
static_assert
(	(	T
	or	P_Q_R
	)
==	T
);
static_assert
(	(	F
	or	P_Q_R
	)
==	P_Q_R
);

static_assert
(	(	P
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	nP
	or	P_Q_R
	)
==	T
);

static_assert
(	(	Q
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	nQ
	or	P_Q_R
	)
==	T
);

static_assert
(	(	R
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	nR
	or	P_Q_R
	)
==	T
);

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
(	(	PQ
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	PQR
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	PQnR
	or	P_Q_R
	)
==	P_Q_R
);

static_assert
(	(	PnQ
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	PnQR
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	PnQnR
	or	P_Q_R
	)
==	P_Q_R
);

static_assert
(	(	PR
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	PnR
	or	P_Q_R
	)
==	P_Q_R
);

static_assert
(	(	nPQ
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	nPQR
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	nPQnR
	or	P_Q_R
	)
==	P_Q_R
);

static_assert
(	(	nPnQ
	or	P_Q_R
	)
==	T
);
static_assert
(	(	nPnQR
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	nPnQnR
	or	P_Q_R
	)
==	T
);

static_assert
(	(	nPR
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	nPnR
	or	P_Q_R
	)
==	T
);

static_assert
(	(	QR
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	QnR
	or	P_Q_R
	)
==	P_Q_R
);

static_assert
(	(	nQR
	or	P_Q_R
	)
==	P_Q_R
);
static_assert
(	(	nQnR
	or	P_Q_R
	)
==	T
);
