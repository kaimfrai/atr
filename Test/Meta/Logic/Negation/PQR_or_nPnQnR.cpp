import Test.Meta.Logic.Cache.PQR_or_nPnQnR;
import Test.Meta.Logic.Cache.PQ_or_nPR_or_nQnR;

///	********************************************************
///	PQR_or_nPnQnR
///	********************************************************
static_assert
(	not
	PQR_or_nPnQnR
==	PnQ_or_nPR_or_QnR
);
