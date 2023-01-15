import Test.Meta.Logic.Cache.PQ_nPnQ_R;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Disjunction;

///	********************************************************
///	PQ_nPnQ_R
///	********************************************************
static_assert
(	(PQ or nPnQ or R)
==	PQ_nPnQ_R
);
static_assert
(	(PQ or R or nPnQ)
==	PQ_nPnQ_R
);

static_assert
(	(nPnQ or PQ or R)
==	PQ_nPnQ_R
);
static_assert
(	(nPnQ or R or PQ)
==	PQ_nPnQ_R
);

static_assert
(	(R or PQ or nPnQ)
==	PQ_nPnQ_R
);
static_assert
(	(R or nPnQ or PQ)
==	PQ_nPnQ_R
);
