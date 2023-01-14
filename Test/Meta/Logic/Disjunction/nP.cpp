import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	nP
/// ************************************************************************************************
static_assert
(	(	T
	or	nP
	)
==	T
);
static_assert
(	(	F
	or	nP
	)
==	nP
);

static_assert
(	(	P
	or	nP
	)
==	T
);
static_assert
(	(	nP
	or	nP
	)
==	nP
);

static_assert
(	(	Q
	or	nP
	)
==	(nP_or_Q)
);
static_assert
(	(	nQ
	or	nP
	)
==	(nP_or_nQ)
);

static_assert
(	(	(P_and_Q)
	or	nP
	)
==	(nP_or_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	or	nP
	)
==	(nP_or_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	or	nP
	)
==	(nP_or_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	or	nP
	)
==	(nP_or_nQ)
);
static_assert
(	(	(P_and_nQ_and_R)
	or	nP
	)
==	(nP_or_nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	nP
	)
==	(nP_or_nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	or	nP
	)
==	(nP_or_R)
);
static_assert
(	(	(P_and_nR)
	or	nP
	)
==	(nP_or_nR)
);

static_assert
(	(	(nP_and_Q)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_Q_and_R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(nP_and_nQ)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(nP_and_R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(Q_and_R)
	or	nP
	)
==	(nP_or_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	or	nP
	)
==	(nP_or_Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	or	nP
	)
==	(nP_or_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	or	nP
	)
==	(nP_or_nQ_and_nR)
);
