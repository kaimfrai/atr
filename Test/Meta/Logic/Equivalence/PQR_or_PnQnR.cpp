import Test.Meta.Logic.Cache.PQR_or_PnQnR;

///	********************************************************
///	PQR_or_PnQnR
///	********************************************************
static_assert
(	(PQR or PnQnR)
==	PQR_or_PnQnR
);
static_assert
(	(PnQnR or PQR)
==	PQR_or_PnQnR
);
