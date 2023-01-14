import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	(PQ or nPR or nQnR)
==	PQ_or_nPR_or_nQnR
);
static_assert
(	(PQ or nQnR or nPR)
==	PQ_or_nPR_or_nQnR
);

static_assert
(	(nPR or PQ or nQnR)
==	PQ_or_nPR_or_nQnR
);
static_assert
(	(nPR or nQnR or PQ)
==	PQ_or_nPR_or_nQnR
);

static_assert
(	(nQnR or PQ or nPR)
==	PQ_or_nPR_or_nQnR
);
static_assert
(	(nQnR or nPR or PQ)
==	PQ_or_nPR_or_nQnR
);
