import Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR_or_nQnR;
import Test.Meta.Logic.Cache.PQR_or_PnQnR_or_nPQnR;

///	********************************************************
///	PQR_or_nPnQ_or_nPnR_or_nQnR
///	********************************************************
static_assert
(	not
	PQR_or_nPnQ_or_nPnR_or_nQnR
==	PQnR_or_PnQR_or_nPQR
);
