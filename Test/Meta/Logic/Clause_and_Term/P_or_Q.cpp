import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	and	(P_or_Q)
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	and	(P_or_Q)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	(P_or_Q)
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	and	(P_or_Q)
	)
==	(P_and_nQ)
);
static_assert
(	(	(P_and_nQ_and_R)
	and	(P_or_Q)
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	(P_or_Q)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	and	(P_or_Q)
	)
==	(P_and_R)
);
static_assert
(	(	(P_and_nR)
	and	(P_or_Q)
	)
==	(P_and_nR)
);

static_assert
(	(	(nP_and_Q)
	and	(P_or_Q)
	)
==	(nP_and_Q)
);
static_assert
(	(	(nP_and_Q_and_R)
	and	(P_or_Q)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	(P_or_Q)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	and	(P_or_Q)
	)
==	F
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	(P_or_Q)
	)
==	F
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	(P_or_Q)
	)
==	F
);

static_assert
(	(	(nP_and_R)
	and	(P_or_Q)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_nR)
	and	(P_or_Q)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(Q_and_R)
	and	(P_or_Q)
	)
==	(Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	(P_or_Q)
	)
==	(Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	(P_or_Q)
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	(P_or_Q)
	)
==	(P_and_nQ_and_nR)
);
