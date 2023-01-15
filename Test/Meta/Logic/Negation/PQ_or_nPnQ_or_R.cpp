import Test.Meta.Logic.Cache.PQ_or_nPnQ_or_R;
import Test.Meta.Logic.Cache.PQR_or_PnQnR;

///	********************************************************
///	PQ_or_nPnQ_or_R
///	********************************************************
static_assert
(	not
	PQ_or_nPnQ_or_R
==	PnQnR_or_nPQnR
);
