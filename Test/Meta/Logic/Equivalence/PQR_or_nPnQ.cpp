import Test.Meta.Logic.Cache.PQR_or_nPnQ;

///	********************************************************
///	PQR_or_nPnQ
///	********************************************************
static_assert
(	(PQR or nPnQ)
==	PQR_or_nPnQ
);
static_assert
(	(nPnQ or PQR)
==	PQR_or_nPnQ
);
