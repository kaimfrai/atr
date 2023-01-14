import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_nPnQ)
///	********************************************************
static_assert
(	not
	(PQ_or_nPnQ)
==	(PnQ	or	nPQ)
);
static_assert
(	not
	(nPnQ	or	PQ)
==	(PnQ	or	nPQ)
);
