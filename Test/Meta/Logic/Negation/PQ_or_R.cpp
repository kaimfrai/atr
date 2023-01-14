import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_R)
///	********************************************************
static_assert
(	not
	(PQ_or_R)
==	(nPnR	or	nQnR)
);
static_assert
(	not
	(R	or	PQ)
==	(nPnR	or	nQnR)
);
