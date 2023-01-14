import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPnQ_or_R)
///	********************************************************
static_assert
(	not
	(PQ_or_nPnQ_or_R)
==	(PnQnR	or	nPQnR)
);
static_assert
(	not
	(PQ_or_R	or	nPnQ)
==	(PnQnR	or	nPQnR)
);

static_assert
(	not
	(nPnQ	or	PQ_or_R)
==	(PnQnR	or	nPQnR)
);
static_assert
(	not
	(nPnQ	or	R	or	PQ)
==	(PnQnR	or	nPQnR)
);

static_assert
(	not
	(R	or	PQ_or_nPnQ)
==	(PnQnR	or	nPQnR)
);
static_assert
(	not
	(R	or	nPnQ	or	PQ)
==	(PnQnR	or	nPQnR)
);
