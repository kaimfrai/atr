import Test.Meta.Logic.Cache.PQ_nPR_nQnR;

///	********************************************************
///	PQ_nPR_nQnR
///	PnR_nPnQ_QR
///	********************************************************
static_assert
(	(PnR or nPnQ or QR)
==	PQ_nPR_nQnR
);
static_assert
(	(PnR or QR or nPnQ)
==	PQ_nPR_nQnR
);

static_assert
(	(nPnQ or PnR or QR)
==	PQ_nPR_nQnR
);
static_assert
(	(nPnQ or QR or PnR)
==	PQ_nPR_nQnR
);

static_assert
(	(QR or PnR_nPnQ)
==	PQ_nPR_nQnR
);
static_assert
(	(QR or nPnQ or PnR)
==	PQ_nPR_nQnR
);
