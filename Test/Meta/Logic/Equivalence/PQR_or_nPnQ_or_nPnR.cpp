import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_nPnQ_or_nPnR)
///	********************************************************
static_assert
(	(PQR or nPnQ or nPnR)
==	PQR_or_nPnQ_or_nPnR
);
static_assert
(	(PQR or nPnR or nPnQ)
==	PQR_or_nPnQ_or_nPnR
);

static_assert
(	(nPnQ or PQR or nPnR)
==	PQR_or_nPnQ_or_nPnR
);
static_assert
(	(nPnQ or nPnR or PQR)
==	PQR_or_nPnQ_or_nPnR
);

static_assert
(	(nPnR or PQR or nPnQ)
==	PQR_or_nPnQ_or_nPnR
);
static_assert
(	(nPnR or nPnQ or PQR)
==	PQR_or_nPnQ_or_nPnR
);
