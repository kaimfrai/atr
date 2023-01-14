import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);

static_assert
(	(	P
	or	(P_and_Q_or_R)
	)
==	(P_or_R)
);
static_assert
(	(	nP
	or	(P_and_Q_or_R)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	Q
	or	(P_and_Q_or_R)
	)
==	(Q	or	R)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_R)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_R)
	)
==	T
);

static_assert
(	(	(P_and_Q)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(P_and_Q_and_R)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);

static_assert
(	(	(P_and_nQ)
	or	(P_and_Q_or_R)
	)
==	(P_or_R)
);
static_assert
(	(	(P_and_nQ_and_R)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	(P_and_Q_or_R)
	)
==	(P_or_R)
);

static_assert
(	(	(P_and_R)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(P_and_nR)
	or	(P_and_Q_or_R)
	)
==	(P_or_R)
);

static_assert
(	(	(nP_and_Q)
	or	(P_and_Q_or_R)
	)
==	(Q	or	R)
);
static_assert
(	(	(nP_and_Q_and_R)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	(P_and_Q_or_R)
	)
==	(Q	or	R)
);

static_assert
(	(	(nP_and_nQ)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_nP_and_nQ_or_R)
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_nP_and_nQ_or_R)
);

static_assert
(	(	(nP_and_R)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(nP_and_nR)
	or	(P_and_Q_or_R)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	(Q_and_R)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(Q_and_nR)
	or	(P_and_Q_or_R)
	)
==	(Q	or	R)
);

static_assert
(	(	(nQ_and_R)
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	(nQ_and_nR)
	or	(P_and_Q_or_R)
	)
==	(P_or_nQ	or	R)
);
