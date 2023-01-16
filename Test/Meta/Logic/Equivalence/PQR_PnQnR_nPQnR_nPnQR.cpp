import Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR_nPnQR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQR_PnQnR_nPQnR_nPnQR
///	********************************************************
static_assert
(	(PQR or PnQnR or nPQnR or nPnQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PQR or PnQnR or nPnQR or nPQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PQR or nPQnR or PnQnR or nPnQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PQR or nPQnR or nPnQR or PnQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PQR or nPnQR or PnQnR or nPQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PQR or nPnQR or nPQnR or PnQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);

static_assert
(	(PnQnR or PQR or nPQnR or nPnQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PnQnR or PQR or nPnQR or nPQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PnQnR or nPQnR or PQR or nPnQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PnQnR or nPQnR or nPnQR or PQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PnQnR or nPnQR or PQR or nPQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(PnQnR or nPnQR or nPQnR or PQR)
==	PQR_PnQnR_nPQnR_nPnQR
);

static_assert
(	(nPQnR or PQR or PnQnR or nPnQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPQnR or PQR or nPnQR or PnQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPQnR or PnQnR or PQR or nPnQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPQnR or PnQnR or nPnQR or PQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPQnR or nPnQR or PQR or PnQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPQnR or nPnQR or PnQnR or PQR)
==	PQR_PnQnR_nPQnR_nPnQR
);

static_assert
(	(nPnQR or PQR or PnQnR or nPQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPnQR or PQR or nPQnR or PnQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPnQR or PnQnR or PQR or nPQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPnQR or PnQnR or nPQnR or PQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPnQR or nPQnR or PQR or PnQnR)
==	PQR_PnQnR_nPQnR_nPnQR
);
static_assert
(	(nPnQR or nPQnR or PnQnR or PQR)
==	PQR_PnQnR_nPQnR_nPnQR
);
