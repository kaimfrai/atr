import Test.Meta.Logic.Data;

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
