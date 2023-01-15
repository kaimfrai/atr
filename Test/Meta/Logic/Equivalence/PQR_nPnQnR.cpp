import Test.Meta.Logic.Cache.PQR_nPnQnR;

///	********************************************************
///	PQR_nPnQnR
///	********************************************************
static_assert
(	(PQR or nPnQnR)
==	PQR_nPnQnR
);
static_assert
(	(nPnQnR or PQR)
==	PQR_nPnQnR
);
