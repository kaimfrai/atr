import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	and	(P	or	Q	or	R)
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	and	(P	or	Q	or	R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	(P	or	Q	or	R)
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	and	(P	or	Q	or	R)
	)
==	(P_and_nQ)
);
static_assert
(	(	(P_and_nQ_and_R)
	and	(P	or	Q	or	R)
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	(P	or	Q	or	R)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	and	(P	or	Q	or	R)
	)
==	(P_and_R)
);
static_assert
(	(	(P_and_nR)
	and	(P	or	Q	or	R)
	)
==	(P_and_nR)
);

static_assert
(	(	(nP_and_Q)
	and	(P	or	Q	or	R)
	)
==	(nP_and_Q)
);
static_assert
(	(	(nP_and_Q_and_R)
	and	(P	or	Q	or	R)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	(P	or	Q	or	R)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	and	(P	or	Q	or	R)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	(P	or	Q	or	R)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	(P	or	Q	or	R)
	)
==	F
);

static_assert
(	(	(nP_and_R)
	and	(P	or	Q	or	R)
	)
==	(nP_and_R)
);
static_assert
(	(	(nP_and_nR)
	and	(P	or	Q	or	R)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(Q_and_R)
	and	(P	or	Q	or	R)
	)
==	(Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	(P	or	Q	or	R)
	)
==	(Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	(P	or	Q	or	R)
	)
==	(nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	(P	or	Q	or	R)
	)
==	(P_and_nQ_and_nR)
);
