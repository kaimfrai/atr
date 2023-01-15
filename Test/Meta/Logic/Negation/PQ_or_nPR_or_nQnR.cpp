import Test.Meta.Logic.Cache.PQ_or_nPR_or_nQnR;
import Test.Meta.Logic.Cache.PQR_or_nPnQnR;

///	********************************************************
///	PQ_or_nPR_or_nQnR
///	PnR_or_nPnQ_or_QR
///	********************************************************
static_assert
(	not
	PQ_or_nPR_or_nQnR
==	PnQR_or_nPQnR
);
