import Test.Meta.Logic.Data;

///	********************************************************
///	PQR_or_PnQnR_or_nPQnR_or_nPnQR
///	********************************************************
static_assert
(	not
	PQR_or_PnQnR_or_nPQnR_or_nPnQR
==	PQnR_or_PnQR_or_nPQR_or_nPnQnR
);
