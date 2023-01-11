import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_R)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	F
);

static_assert
(	(	(P_and_nQ)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_nQ_and_nR)
);
static_assert
(	(	(P_and_nQ_and_R)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	F
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_nR)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	(nP_and_Q)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_Q_and_nR)
);
static_assert
(	(	(nP_and_Q_and_R)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	F
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nQ)
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	(nP_and_R)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nR)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nR)
);

static_assert
(	(	(Q_and_R)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nQ_and_nR)
);
