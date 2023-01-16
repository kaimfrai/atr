import Test.Meta.Logic.Cache.PQ_PR_nPnQ;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_PR_nPnQ
///	PQ_nPnQ_nQR
///	********************************************************
static_assert
(	(PQ or nPnQ or nQR)
==	PQ_PR_nPnQ
);
static_assert
(	(PQ or nQR or nPnQ)
==	PQ_PR_nPnQ
);

static_assert
(	(nPnQ or PQ or nQR)
==	PQ_PR_nPnQ
);
static_assert
(	(nPnQ or nQR or PQ)
==	PQ_PR_nPnQ
);

static_assert
(	(nQR or PQ or nPnQ)
==	PQ_PR_nPnQ
);
static_assert
(	(nQR or nPnQ or PQ)
==	PQ_PR_nPnQ
);
