import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_R)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	F
);

static_assert
(	(	(P_and_R)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_R)
);
static_assert
(	(	(P_and_nR)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(nP_and_Q)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_R)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	F
);

static_assert
(	(	(nP_and_nQ)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_nQ)
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	(nP_and_R)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_R)
);
static_assert
(	(	(nP_and_nR)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	(Q_and_R)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_nQ_and_nR)
);
