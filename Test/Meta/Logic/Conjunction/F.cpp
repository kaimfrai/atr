import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Conjunction;

///	********************************************************
///	F
///	********************************************************
static_assert
(	(	T
	and	F
	)
==	F
);
static_assert
(	(	F
	and	F
	)
==	F
);

static_assert
(	(	P
	and	F
	)
==	F
);
static_assert
(	(	nP
	and	F
	)
==	F
);

static_assert
(	(	PQ
	and	F
	)
==	F
);
static_assert
(	(	PQR
	and	F
	)
==	F
);
