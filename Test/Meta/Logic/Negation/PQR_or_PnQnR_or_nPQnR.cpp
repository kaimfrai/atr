import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_PnQnR_or_nPQnR)
///	********************************************************
static_assert
(	not
	(PQR_or_PnQnR_or_nPQnR)
==	(PQnR	or	nPnQ	or	nPR	or	nQR)
);
static_assert
(	not
	(PQR	or	nPQnR	or	PnQnR)
==	(PQnR	or	nPnQ	or	nPR	or	nQR)
);

static_assert
(	not
	(PnQnR	or	PQR	or	nPQnR)
==	(PQnR	or	nPnQ	or	nPR	or	nQR)
);
static_assert
(	not
	(PnQnR	or	nPQnR	or	PQR)
==	(PQnR	or	nPnQ	or	nPR	or	nQR)
);

static_assert
(	not
	(nPQnR	or	PQR_or_PnQnR)
==	(PQnR	or	nPnQ	or	nPR	or	nQR)
);
static_assert
(	not
	(nPQnR	or	PnQnR	or	PQR)
==	(PQnR	or	nPnQ	or	nPR	or	nQR)
);
