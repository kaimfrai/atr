import Meta.Logic.Test.Data;

///	********************************************************
///	(PQR_or_nPnQ_or_nPnR)
///	********************************************************
static_assert
(	not
	(PQR_or_nPnQ_or_nPnR)
==	(PnQ	or	PnR	or	nPQR)
);
static_assert
(	not
	(PQR	or	nPnR_or_nPnQ)
==	(PnQ	or	PnR	or	nPQR)
);

static_assert
(	not
	(nPnQ	or	PQR	or	nPnR)
==	(PnQ	or	PnR	or	nPQR)
);
static_assert
(	not
	(nPnQ	or	nPnR	or	PQR)
==	(PnQ	or	PnR	or	nPQR)
);

static_assert
(	not
	(nPnR	or	PQR_or_nPnQ)
==	(PnQ	or	PnR	or	nPQR)
);
static_assert
(	not
	(nPnR_or_nPnQ	or	PQR)
==	(PnQ	or	PnR	or	nPQR)
);
