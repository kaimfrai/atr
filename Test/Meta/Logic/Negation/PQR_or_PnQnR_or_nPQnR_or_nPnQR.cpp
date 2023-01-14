import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
///	********************************************************
static_assert
(	not
	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PQR_or_PnQnR	or	nPnQR	or	nPQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PQR	or	nPQnR	or	PnQnR	or	nPnQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PQR	or	nPQnR	or	nPnQR	or	PnQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PQR_or_nPnQR	or	PnQnR	or	nPQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PQR_or_nPnQR	or	nPQnR	or	PnQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);

static_assert
(	not
	(PnQnR	or	PQR	or	nPQnR	or	nPnQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PnQnR	or	PQR_or_nPnQR	or	nPQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PnQnR	or	nPQnR	or	PQR_or_nPnQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PnQnR	or	nPQnR	or	nPnQR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PnQnR	or	nPnQR	or	PQR	or	nPQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(PnQnR	or	nPnQR	or	nPQnR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);

static_assert
(	not
	(nPQnR	or	PQR_or_PnQnR	or	nPnQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPQnR	or	PQR_or_nPnQR	or	PnQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPQnR	or	PnQnR	or	PQR_or_nPnQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPQnR	or	PnQnR	or	nPnQR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPQnR	or	nPnQR	or	PQR_or_PnQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPQnR	or	nPnQR	or	PnQnR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);

static_assert
(	not
	(nPnQR	or	PQR_or_PnQnR_or_nPQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPnQR	or	PQR	or	nPQnR	or	PnQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPnQR	or	PnQnR	or	PQR	or	nPQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPnQR	or	PnQnR	or	nPQnR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPnQR	or	nPQnR	or	PQR_or_PnQnR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
static_assert
(	not
	(nPnQR	or	nPQnR	or	PnQnR	or	PQR)
==	(PQnR	or	PnQR	or	nPQR_or_nPnQnR)
);
