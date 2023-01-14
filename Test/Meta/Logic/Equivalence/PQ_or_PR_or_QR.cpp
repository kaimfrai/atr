import Test.Meta.Logic.Data;

///	********************************************************
///	(PQ_or_PR_or_QR)
///	********************************************************
static_assert
(	(PQ_or_PR_or_QR)
==	(PQ_or_PR_or_QR)
);
static_assert
(	(PQ_or_PR_or_QR)
==	(PQ_or_QR	or	PR)
);

static_assert
(	(PQ_or_PR_or_QR)
==	(PR	or	PQ_or_QR)
);
static_assert
(	(PQ_or_PR_or_QR)
==	(PR	or	QR	or	PQ)
);

static_assert
(	(PQ_or_PR_or_QR)
==	(QR	or	PQ_or_PR)
);
static_assert
(	(PQ_or_PR_or_QR)
==	(QR	or	PR	or	PQ)
);
