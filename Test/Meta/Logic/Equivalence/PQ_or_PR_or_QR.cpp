import Test.Meta.Logic.Data;

///	********************************************************
///	PQ_or_PR_or_QR
///	********************************************************
static_assert
(	(PQ or PR or QR)
==	PQ_or_PR_or_QR
);
static_assert
(	(PQ or QR or PR)
==	PQ_or_PR_or_QR
);

static_assert
(	(PR or PQ or QR)
==	PQ_or_PR_or_QR
);
static_assert
(	(PR or QR or PQ)
==	PQ_or_PR_or_QR
);

static_assert
(	(QR or PQ or PR)
==	PQ_or_PR_or_QR
);
static_assert
(	(QR or PR or PQ)
==	PQ_or_PR_or_QR
);
