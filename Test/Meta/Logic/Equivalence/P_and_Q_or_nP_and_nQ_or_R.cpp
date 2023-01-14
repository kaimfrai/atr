import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(PQ_or_nPnQ_or_R)
/// ************************************************************************************************
static_assert
(	(PQ_or_nPnQ_or_R)
==	(PQ_or_nPnQ_or_R)
);
static_assert
(	(PQ_or_nPnQ_or_R)
==	(PQ_or_R	or	nPnQ)
);

static_assert
(	(PQ_or_nPnQ_or_R)
==	(nPnQ	or	PQ_or_R)
);
static_assert
(	(PQ_or_nPnQ_or_R)
==	(nPnQ	or	R	or	PQ)
);

static_assert
(	(PQ_or_nPnQ_or_R)
==	(R	or	PQ_or_nPnQ)
);
static_assert
(	(PQ_or_nPnQ_or_R)
==	(R	or	nPnQ	or	PQ)
);
