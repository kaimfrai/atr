import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Disjunction;

///	********************************************************
///	PQR_nPnQ_nPnR
///	********************************************************
static_assert
(	(PQR or nPnQ or nPnR)
==	PQR_nPnQ_nPnR
);
static_assert
(	(PQR or nPnR or nPnQ)
==	PQR_nPnQ_nPnR
);

static_assert
(	(nPnQ or PQR or nPnR)
==	PQR_nPnQ_nPnR
);
static_assert
(	(nPnQ or nPnR or PQR)
==	PQR_nPnQ_nPnR
);

static_assert
(	(nPnR or PQR or nPnQ)
==	PQR_nPnQ_nPnR
);
static_assert
(	(nPnR or nPnQ or PQR)
==	PQR_nPnQ_nPnR
);
