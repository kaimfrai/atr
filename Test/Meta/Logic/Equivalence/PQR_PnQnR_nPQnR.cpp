import Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQR_PnQnR_nPQnR
///	********************************************************
static_assert
(	(PQR or PnQnR or nPQnR)
==	PQR_PnQnR_nPQnR
);
static_assert
(	(PQR or nPQnR or PnQnR)
==	PQR_PnQnR_nPQnR
);

static_assert
(	(PnQnR or PQR or nPQnR)
==	PQR_PnQnR_nPQnR
);
static_assert
(	(PnQnR or nPQnR or PQR)
==	PQR_PnQnR_nPQnR
);

static_assert
(	(nPQnR or PQR or PnQnR)
==	PQR_PnQnR_nPQnR
);
static_assert
(	(nPQnR or PnQnR or PQR)
==	PQR_PnQnR_nPQnR
);
