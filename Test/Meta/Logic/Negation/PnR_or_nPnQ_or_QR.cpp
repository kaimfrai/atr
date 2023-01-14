import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	not
	PnR_or_nPnQ_or_QR
==	PnQR_or_nPQnR
);
