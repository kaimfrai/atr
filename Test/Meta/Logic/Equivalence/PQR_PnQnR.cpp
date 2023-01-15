import Test.Meta.Logic.Cache.PQR_PnQnR;

///	********************************************************
///	PQR_PnQnR
///	********************************************************
static_assert
(	(PQR or PnQnR)
==	PQR_PnQnR
);
static_assert
(	(PnQnR or PQR)
==	PQR_PnQnR
);
