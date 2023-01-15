import Test.Meta.Logic.Cache.PQ_PR_QR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Disjunction;

///	********************************************************
///	PQ_PR_QR
///	********************************************************
static_assert
(	(PQ or PR or QR)
==	PQ_PR_QR
);
static_assert
(	(PQ or QR or PR)
==	PQ_PR_QR
);

static_assert
(	(PR or PQ or QR)
==	PQ_PR_QR
);
static_assert
(	(PR or QR or PQ)
==	PQ_PR_QR
);

static_assert
(	(QR or PQ or PR)
==	PQ_PR_QR
);
static_assert
(	(QR or PR or PQ)
==	PQ_PR_QR
);
