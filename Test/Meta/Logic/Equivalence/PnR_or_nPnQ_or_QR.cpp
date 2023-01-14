import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_nPR_or_nQnR)
///	(PnR_or_nPnQ_or_QR)
///	********************************************************
static_assert
(	(PnR or nPnQ or QR)
==	PQ_or_nPR_or_nQnR
);
static_assert
(	(PnR or QR or nPnQ)
==	PQ_or_nPR_or_nQnR
);

static_assert
(	(nPnQ or PnR or QR)
==	PQ_or_nPR_or_nQnR
);
static_assert
(	(nPnQ or QR or PnR)
==	PQ_or_nPR_or_nQnR
);

static_assert
(	(QR or PnR_or_nPnQ)
==	PQ_or_nPR_or_nQnR
);
static_assert
(	(QR or nPnQ or PnR)
==	PQ_or_nPR_or_nQnR
);
