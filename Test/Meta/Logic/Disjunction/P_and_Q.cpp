import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q)
	)
==	(P_and_Q)
);
static_assert
(	(	F
	and	(P_and_Q)
	)
==	F
);

static_assert
(	(	P
	or	(P_and_Q)
	)
==	P
);
static_assert
(	(	nP
	or	(P_and_Q)
	)
==	(nP_or_Q)
);

static_assert
(	(	Q
	or	(P_and_Q)
	)
==	Q
);
static_assert
(	(	nQ
	or	(P_and_Q)
	)
==	(P_or_nQ)
);

static_assert
(	(	R
	or	(P_and_Q)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q)
	)
==	(P_and_Q_or_nR)
);

static_assert
(	(	(P_and_Q)
	or	(P_and_Q)
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	or	(P_and_Q)
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_nR)
	or	(P_and_Q)
	)
==	(P_and_Q)
);

static_assert
(	(	(P_and_nQ)
	or	(P_and_Q)
	)
==	P
);
static_assert
(	(	(P_and_nQ_and_R)
	or	(P_and_Q)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	(P_and_Q)
	)
==	(P_and_Q_or_P_and_nR)
);

static_assert
(	(	(P_and_R)
	or	(P_and_Q)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	(P_and_nR)
	or	(P_and_Q)
	)
==	(P_and_Q_or_P_and_nR)
);

static_assert
(	(	(nP_and_Q)
	or	(P_and_Q)
	)
==	Q
);
static_assert
(	(	(nP_and_Q_and_R)
	or	(P_and_Q)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	(P_and_Q)
	)
==	(P_and_Q_or_Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	or	(P_and_Q)
	)
==	(P_and_Q_or_nP_and_nQ)
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	(P_and_Q)
	)
==	(P_and_Q_or_nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	(P_and_Q)
	)
==	(P_and_Q_or_nP_and_nQ_and_nR)
);

static_assert
(	(	(nP_and_R)
	or	(P_and_Q)
	)
==	(P_and_Q_or_nP_and_R)
);
static_assert
(	(	(nP_and_nR)
	or	(P_and_Q)
	)
==	(P_and_Q_or_nP_and_nR)
);

static_assert
(	(	(Q_and_R)
	or	(P_and_Q)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	or	(P_and_Q)
	)
==	(P_and_Q_or_Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	or	(P_and_Q)
	)
==	(P_and_Q_or_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	or	(P_and_Q)
	)
==	(P_and_Q_or_nQ_and_nR)
);