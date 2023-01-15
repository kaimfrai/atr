import Test.Meta.Logic.Cache.PQR_nPnQ;

///	********************************************************
///	PQR_nPnQ
///	********************************************************
static_assert
(	(PQR or nPnQ)
==	PQR_nPnQ
);
static_assert
(	(nPnQ or PQR)
==	PQR_nPnQ
);
