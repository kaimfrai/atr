import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_nPnQ_or_nPnR_or_nQnR)
///	********************************************************
static_assert
(	(PQR or nPnQ or nPnR or nQnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(PQR or nPnQ or nQnR or nPnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(PQR or nPnR or nPnQ or nQnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(PQR or nPnR or nQnR or nPnQ)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(PQR or nQnR or nPnR or nPnQ)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(PQR or nQnR or nPnQ or nPnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);

static_assert
(	(nPnQ or PQR or nPnR or nQnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnQ or PQR or nQnR or nPnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnQ or nPnR or PQR or nQnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnQ or nPnR or nQnR or PQR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnQ or nQnR or PQR or nPnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnQ or nQnR or nPnR or PQR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);

static_assert
(	(nPnR or PQR or nPnQ or nQnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnR or PQR or nQnR or nPnQ)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnR or nPnQ or PQR or nQnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnR or nPnQ or nQnR or PQR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnR or nQnR or PQR or nPnQ)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nPnR or nQnR or nPnQ or PQR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);

static_assert
(	(nQnR or PQR or nPnQ or nPnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nQnR or PQR or nPnR or nPnQ)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nQnR or nPnQ or PQR or nPnR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nQnR or nPnQ or nPnR or PQR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nQnR or nPnR or PQR or nPnQ)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
static_assert
(	(nQnR or nPnR or nPnQ or PQR)
==	PQR_or_nPnQ_or_nPnR_or_nQnR
);
