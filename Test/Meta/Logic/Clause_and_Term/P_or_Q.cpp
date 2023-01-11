import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	and	(P	or	Q)
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	and	(P	or	Q)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	(P	or	Q)
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	and	(P	or	Q)
	)
==	(P_and_nQ)
);
static_assert
(	(	(P_and_nQ_and_R)
	and	(P	or	Q)
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	(P	or	Q)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	and	(P	or	Q)
	)
==	(P_and_R)
);
static_assert
(	(	(P_and_nR)
	and	(P	or	Q)
	)
==	(P_and_nR)
);

static_assert
(	(	(nP_and_Q)
	and	(P	or	Q)
	)
==	(nP_and_Q)
);
static_assert
(	(	(nP_and_Q_and_R)
	and	(P	or	Q)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	(P	or	Q)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	and	(P	or	Q)
	)
==	F
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	(P	or	Q)
	)
==	F
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	(P	or	Q)
	)
==	F
);

static_assert
(	(	(nP_and_R)
	and	(P	or	Q)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_nR)
	and	(P	or	Q)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(Q_and_R)
	and	(P	or	Q)
	)
==	(Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	(P	or	Q)
	)
==	(Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	(P	or	Q)
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	(P	or	Q)
	)
==	(P_and_nQ_and_nR)
);
