import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_PnQnR)
///	********************************************************
static_assert
(	(PnQnR	or	PQR)
==	(PQR_or_PnQnR)
);
static_assert
(	(PnQnR	or	PQR)
==	(PnQnR	or	PQR)
);
