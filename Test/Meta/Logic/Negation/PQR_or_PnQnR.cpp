import Meta.Logic.Test.Data;

///	********************************************************
///	(PQR_or_PnQnR)
///	********************************************************
static_assert
(	not
	(PQR_or_PnQnR)
==	(nP_or_nQR	or	QnR)
);
static_assert
(	not
	(PnQnR	or	PQR)
==	(nP_or_nQR	or	QnR)
);
