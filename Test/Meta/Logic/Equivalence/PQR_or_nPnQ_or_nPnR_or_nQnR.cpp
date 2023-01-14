import Meta.Logic.Test.Data;

///	********************************************************
///	(PQR_or_nPnQ_or_nPnR_or_nQnR)
///	********************************************************
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(PQR_or_nPnQ_or_nPnR_or_nQnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(PQR_or_nPnQ	or	nQnR	or	nPnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(PQR	or	nPnR_or_nPnQ	or	nQnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(PQR	or	nPnR	or	nQnR	or	nPnQ)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(PQR	or	nQnR	or	nPnR_or_nPnQ)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(PQR	or	nQnR	or	nPnQ	or	nPnR)
);

static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnQ	or	PQR	or	nPnR	or	nQnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnQ	or	PQR	or	nQnR	or	nPnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnQ	or	nPnR	or	PQR	or	nQnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnQ	or	nPnR	or	nQnR	or	PQR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnQ	or	nQnR	or	PQR	or	nPnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnQ	or	nQnR	or	nPnR	or	PQR)
);

static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnR	or	PQR_or_nPnQ	or	nQnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnR	or	PQR	or	nQnR	or	nPnQ)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnR_or_nPnQ	or	PQR	or	nQnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnR_or_nPnQ	or	nQnR	or	PQR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnR	or	nQnR	or	PQR_or_nPnQ)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nPnR	or	nQnR	or	nPnQ	or	PQR)
);

static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nQnR	or	PQR_or_nPnQ_or_nPnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nQnR	or	PQR	or	nPnR_or_nPnQ)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nQnR	or	nPnQ	or	PQR	or	nPnR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nQnR	or	nPnQ	or	nPnR	or	PQR)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nQnR	or	nPnR	or	PQR_or_nPnQ)
);
static_assert
(	(PQR_or_nPnQ_or_nPnR_or_nQnR)
==	(nQnR	or	nPnR_or_nPnQ	or	PQR)
);
