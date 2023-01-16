import Test.Meta.Logic.Cache.PQ_nPR_nQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQ_nPR_nQnR
///	PnR_nPnQ_QR
///	********************************************************
static_assert
(	(PQ or nPR or nQnR)
==	PQ_nPR_nQnR
);
static_assert
(	(PQ or nQnR or nPR)
==	PQ_nPR_nQnR
);

static_assert
(	(nPR or PQ or nQnR)
==	PQ_nPR_nQnR
);
static_assert
(	(nPR or nQnR or PQ)
==	PQ_nPR_nQnR
);

static_assert
(	(nQnR or PQ or nPR)
==	PQ_nPR_nQnR
);
static_assert
(	(nQnR or nPR or PQ)
==	PQ_nPR_nQnR
);
