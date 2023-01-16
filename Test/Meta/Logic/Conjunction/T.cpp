import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Conjunction;

///	********************************************************
///	T
///	********************************************************
static_assert
(	(	T
	and	T
	)
==	T
);
static_assert
(	(	F
	and	T
	)
==	F
);

static_assert
(	(	P
	and	T
	)
==	P
);
static_assert
(	(	nP
	and	T
	)
==	nP
);

static_assert
(	(	PQ
	and	T
	)
==	PQ
);
static_assert
(	(	PQR
	and	T
	)
==	PQR
);
