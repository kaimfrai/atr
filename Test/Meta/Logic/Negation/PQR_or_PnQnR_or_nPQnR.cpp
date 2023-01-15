import Test.Meta.Logic.Data;

///	********************************************************
///	PQR_or_PnQnR_or_nPQnR
///	********************************************************
static_assert
(	not
	PQR_or_PnQnR_or_nPQnR
==	PQnR_or_nPnQ_or_nPR_or_nQR
);
