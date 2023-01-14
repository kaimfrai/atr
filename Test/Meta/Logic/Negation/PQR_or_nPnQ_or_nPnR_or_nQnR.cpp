import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_nPnQ_or_nPnR_or_nQnR)
///	********************************************************
static_assert
(	not
	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(PQR_or_nPnQ	or	nQnR	or	nPnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(PQR	or	nPnR_or_nPnQ	or	nQnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(PQR	or	nPnR	or	nQnR	or	nPnQ)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(PQR	or	nQnR	or	nPnQ	or	nPnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(PQR	or	nQnR	or	nPnR_or_nPnQ)
==	(PQnR	or	PnQR	or	nPQR)
);

static_assert
(	not
	(nPnQ	or	PQR	or	nPnR	or	nQnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnQ	or	PQR	or	nQnR	or	nPnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnQ	or	nPnR	or	PQR	or	nQnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnQ	or	nPnR	or	nQnR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnQ	or	nQnR	or	PQR	or	nPnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnQ	or	nQnR	or	nPnR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR)
);

static_assert
(	not
	(nPnR	or	PQR_or_nPnQ	or	nQnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnR	or	PQR	or	nQnR	or	nPnQ)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnR_or_nPnQ	or	PQR	or	nQnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnR_or_nPnQ	or	nQnR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnR	or	nQnR	or	PQR_or_nPnQ)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nPnR	or	nQnR	or	nPnQ	or	PQR)
==	(PQnR	or	PnQR	or	nPQR)
);

static_assert
(	not
	(nQnR	or	PQR_or_nPnQ_or_nPnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nQnR	or	PQR	or	nPnR_or_nPnQ)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nQnR	or	nPnQ	or	PQR	or	nPnR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nQnR	or	nPnQ	or	nPnR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nQnR	or	nPnR	or	PQR_or_nPnQ)
==	(PQnR	or	PnQR	or	nPQR)
);
static_assert
(	not
	(nQnR	or	nPnR_or_nPnQ	or	PQR)
==	(PQnR	or	PnQR	or	nPQR)
);
