import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_PnQnR_or_nPQnR_or_nPnQR)
///	********************************************************
static_assert
(	(PQR or PnQnR or nPQnR or nPnQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PQR or PnQnR or nPnQR or nPQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PQR or nPQnR or PnQnR or nPnQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PQR or nPQnR or nPnQR or PnQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PQR or nPnQR or PnQnR or nPQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PQR or nPnQR or nPQnR or PnQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);

static_assert
(	(PnQnR or PQR or nPQnR or nPnQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PnQnR or PQR or nPnQR or nPQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PnQnR or nPQnR or PQR or nPnQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PnQnR or nPQnR or nPnQR or PQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PnQnR or nPnQR or PQR or nPQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(PnQnR or nPnQR or nPQnR or PQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);

static_assert
(	(nPQnR or PQR or PnQnR or nPnQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPQnR or PQR or nPnQR or PnQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPQnR or PnQnR or PQR or nPnQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPQnR or PnQnR or nPnQR or PQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPQnR or nPnQR or PQR or PnQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPQnR or nPnQR or PnQnR or PQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);

static_assert
(	(nPnQR or PQR or PnQnR or nPQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPnQR or PQR or nPQnR or PnQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPnQR or PnQnR or PQR or nPQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPnQR or PnQnR or nPQnR or PQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPnQR or nPQnR or PQR or PnQnR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
static_assert
(	(nPnQR or nPQnR or PnQnR or PQR)
==	PQR_or_PnQnR_or_nPQnR_or_nPnQR
);
