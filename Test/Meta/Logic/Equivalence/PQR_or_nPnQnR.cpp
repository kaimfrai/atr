import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_nPnQnR)
///	********************************************************
static_assert
(	(PQR or nPnQnR)
==	PQR_or_nPnQnR
);
static_assert
(	(nPnQnR or PQR)
==	PQR_or_nPnQnR
);
