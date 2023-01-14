import Meta.Logic.Test.Data;

///	********************************************************
///	(PQ_or_nPR)
///	********************************************************
static_assert
(	not
	(PQ_or_nPR)
==	(PnQ	or	nPnR)
);
static_assert
(	not
	(nPR	or	PQ)
==	(PnQ	or	nPnR)
);
