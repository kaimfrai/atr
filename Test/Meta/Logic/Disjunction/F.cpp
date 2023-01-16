import Test.Meta.Logic.Cache.F;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.T;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	F
///	********************************************************
static_assert
(	(	T
	or	F
	)
==	T
);
static_assert
(	(	F
	or	F
	)
==	F
);

static_assert
(	(	P
	or	F
	)
==	P
);
static_assert
(	(	nP
	or	F
	)
==	nP
);

static_assert
(	(	PQ
	or	F
	)
==	PQ
);
static_assert
(	(	PQR
	or	F
	)
==	PQR
);
