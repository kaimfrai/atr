import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	T
///	********************************************************
static_assert
(	(	T
	or	T
	)
==	T
);
static_assert
(	(	F
	or	T
	)
==	T
);

static_assert
(	(	P
	or	T
	)
==	T
);
static_assert
(	(	nP
	or	T
	)
==	T
);

static_assert
(	(	PQ
	or	T
	)
==	T
);
static_assert
(	(	PQR
	or	T
	)
==	T
);
