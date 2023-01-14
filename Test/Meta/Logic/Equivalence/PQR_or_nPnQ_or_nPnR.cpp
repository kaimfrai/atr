import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_nPnQ_or_nPnR)
///	********************************************************
static_assert
(	(PQR_or_nPnQ_or_nPnR)
==	(PQR_or_nPnQ_or_nPnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR)
==	(PQR	or	nPnR_or_nPnQ)
);

static_assert
(	(PQR_or_nPnQ_or_nPnR)
==	(nPnQ	or	PQR	or	nPnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR)
==	(nPnQ	or	nPnR	or	PQR)
);

static_assert
(	(PQR_or_nPnQ_or_nPnR)
==	(nPnR	or	PQR_or_nPnQ)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR)
==	(nPnR_or_nPnQ	or	PQR)
);
