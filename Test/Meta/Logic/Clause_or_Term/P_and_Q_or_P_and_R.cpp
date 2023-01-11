import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	(P_and_Q_and_R)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R)
);

static_assert
(	(	(P_and_nQ)
	or	(P_and_Q_or_P_and_R)
	)
==	P
);
static_assert
(	(	(P_and_nQ_and_R)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	(P_and_Q_or_P_and_R)
	)
==	P
);

static_assert
(	(	(P_and_R)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	(P_and_nR)
	or	(P_and_Q_or_P_and_R)
	)
==	P
);

static_assert
(	(	(nP_and_Q)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_R	or	Q)
);
static_assert
(	(	(nP_and_Q_and_R)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R_or_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_R	or	Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R_or_nP_and_nQ)
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R_or_nP_and_nQ_and_nR)
);

static_assert
(	(	(nP_and_R)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(nP_and_nR)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R	or	nP_and_nR)
);

static_assert
(	(	(Q_and_R)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R_or_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_R	or	Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	or	(P_and_Q_or_P_and_R)
	)
==	(P_or_nQ_and_nR)
);
