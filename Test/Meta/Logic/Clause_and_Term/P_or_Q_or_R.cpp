import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_or_Q_or_R)
	)
==	P
);
static_assert
(	(	nP
	and	(P_or_Q_or_R)
	)
==	(nP_and_Q_or_nP_and_R)
);

static_assert
(	(	Q
	and	(P_or_Q_or_R)
	)
==	Q
);
static_assert
(	(	nQ
	and	(P_or_Q_or_R)
	)
==	(P_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P_or_Q_or_R)
	)
==	R
);
static_assert
(	(	nR
	and	(P_or_Q_or_R)
	)
==	(P_and_nR	or	Q_and_nR)
);

static_assert
(	(	(P_and_Q)
	and	(P_or_Q_or_R)
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	and	(P_or_Q_or_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	(P_or_Q_or_R)
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	and	(P_or_Q_or_R)
	)
==	(P_and_nQ)
);
static_assert
(	(	(P_and_nQ_and_R)
	and	(P_or_Q_or_R)
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	(P_or_Q_or_R)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	and	(P_or_Q_or_R)
	)
==	(P_and_R)
);
static_assert
(	(	(P_and_nR)
	and	(P_or_Q_or_R)
	)
==	(P_and_nR)
);

static_assert
(	(	(nP_and_Q)
	and	(P_or_Q_or_R)
	)
==	(nP_and_Q)
);
static_assert
(	(	(nP_and_Q_and_R)
	and	(P_or_Q_or_R)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	(P_or_Q_or_R)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	and	(P_or_Q_or_R)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	(P_or_Q_or_R)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	(P_or_Q_or_R)
	)
==	F
);

static_assert
(	(	(nP_and_R)
	and	(P_or_Q_or_R)
	)
==	(nP_and_R)
);
static_assert
(	(	(nP_and_nR)
	and	(P_or_Q_or_R)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(Q_and_R)
	and	(P_or_Q_or_R)
	)
==	(Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	(P_or_Q_or_R)
	)
==	(Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	(P_or_Q_or_R)
	)
==	(nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	(P_or_Q_or_R)
	)
==	(P_and_nQ_and_nR)
);
