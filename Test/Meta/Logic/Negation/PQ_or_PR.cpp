import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_PR)
///	********************************************************
static_assert
(	not
	(PQ_or_PR)
==	(nP_or_nQnR)
);
static_assert
(	not
	(PR	or	PQ)
==	(nP_or_nQnR)
);
