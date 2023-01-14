import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_PnQnR_or_nPQnR)
///	********************************************************
static_assert
(	(PQR_or_PnQnR_or_nPQnR)
==	(PQR_or_PnQnR_or_nPQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR)
==	(PQR	or	nPQnR	or	PnQnR)
);

static_assert
(	(PQR_or_PnQnR_or_nPQnR)
==	(PnQnR	or	PQR	or	nPQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR)
==	(PnQnR	or	nPQnR	or	PQR)
);

static_assert
(	(PQR_or_PnQnR_or_nPQnR)
==	(nPQnR	or	PQR_or_PnQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR)
==	(nPQnR	or	PnQnR	or	PQR)
);
