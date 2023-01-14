import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQR_or_nPnQ)
/// ************************************************************************************************
static_assert
(	not
	(PQR_or_nPnQ)
==	(PnQ	or	PnR	or	nPQ)
);
static_assert
(	not
	(nPnQ	or	PQR)
==	(PnQ	or	PnR	or	nPQ)
);
