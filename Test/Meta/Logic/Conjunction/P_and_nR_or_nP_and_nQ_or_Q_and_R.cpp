import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
///	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	F
);

static_assert
(	(	P
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_or_P_and_nR)
);
static_assert
(	(	nP
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_R	or	nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_nQ	or	nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_nR	or	nQ_and_nR)
);

static_assert
(	(	(P_and_Q)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_nQ_and_nR)
);
static_assert
(	(	(P_and_nQ_and_R)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	F
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_nR)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_nR)
);

static_assert
(	(	(nP_and_Q)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_R)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	F
);

static_assert
(	(	(nP_and_nQ)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_nQ)
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	(nP_and_R)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_R)
);
static_assert
(	(	(nP_and_nR)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nQ_and_nR)
);

static_assert
(	(	(Q_and_R)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_and_nR)
);
