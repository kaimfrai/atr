import Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR;

///	********************************************************
///	PQR_or_nPnQ_or_nPnR
///	********************************************************
static_assert
(	not
	PQR_or_nPnQ_or_nPnR
==	PnQ_or_PnR_or_nPQR
);
