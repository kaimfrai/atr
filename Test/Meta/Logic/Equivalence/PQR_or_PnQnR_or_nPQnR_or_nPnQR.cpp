import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
/// ************************************************************************************************
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PQR_or_PnQnR	or	nPnQR	or	nPQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PQR	or	nPQnR	or	PnQnR	or	nPnQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PQR	or	nPQnR	or	nPnQR	or	PnQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PQR_or_nPnQR	or	PnQnR	or	nPQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PQR_or_nPnQR	or	nPQnR	or	PnQnR)
);

static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PnQnR	or	PQR	or	nPQnR	or	nPnQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PnQnR	or	PQR_or_nPnQR	or	nPQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PnQnR	or	nPQnR	or	PQR_or_nPnQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PnQnR	or	nPQnR	or	nPnQR	or	PQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PnQnR	or	nPnQR	or	PQR	or	nPQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(PnQnR	or	nPnQR	or	nPQnR	or	PQR)
);

static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPQnR	or	PQR_or_PnQnR	or	nPnQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPQnR	or	PQR_or_nPnQR	or	PnQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPQnR	or	PnQnR	or	PQR_or_nPnQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPQnR	or	PnQnR	or	nPnQR	or	PQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPQnR	or	nPnQR	or	PQR_or_PnQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPQnR	or	nPnQR	or	PnQnR	or	PQR)
);

static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPnQR	or	PQR_or_PnQnR_or_nPQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPnQR	or	PQR	or	nPQnR	or	PnQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPnQR	or	PnQnR	or	PQR	or	nPQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPnQR	or	PnQnR	or	nPQnR	or	PQR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPnQR	or	nPQnR	or	PQR_or_PnQnR)
);
static_assert
(	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
==	(nPnQR	or	nPQnR	or	PnQnR	or	PQR)
);
