import Test.Meta.Logic.Data;

///	********************************************************
///	(PQR_or_nPnQnR)
///	********************************************************
static_assert
(	not
	(PQR_or_nPnQnR)
==	(PnQ	or	nPR	or	QnR)
);
static_assert
(	not
	(nPnQnR	or	PQR)
==	(PnQ	or	nPR	or	QnR)
);
