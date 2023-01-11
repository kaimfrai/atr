import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	P
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	or	P
	)
==	P
);
static_assert
(	(	(P_and_Q_and_R)
	or	P
	)
==	P
);
static_assert
(	(	(P_and_Q_and_nR)
	or	P
	)
==	P
);

static_assert
(	(	(P_and_nQ)
	or	P
	)
==	P
);
static_assert
(	(	(P_and_nQ_and_R)
	or	P
	)
==	P
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	P
	)
==	P
);

static_assert
(	(	(P_and_R)
	or	P
	)
==	P
);
static_assert
(	(	(P_and_nR)
	or	P
	)
==	P
);

static_assert
(	(	(nP_and_Q)
	or	P
	)
==	(P_or_Q)
);
static_assert
(	(	(nP_and_Q_and_R)
	or	P
	)
==	(P_or_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	P
	)
==	(P_or_Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	or	P
	)
==	(P	or	nQ)
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	P
	)
==	(P	or	nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	P
	)
==	(P	or	nQ_and_nR)
);

static_assert
(	(	(nP_and_R)
	or	P
	)
==	(P	or	R)
);
static_assert
(	(	(nP_and_nR)
	or	P
	)
==	(P	or	nR)
);

static_assert
(	(	(Q_and_R)
	or	P
	)
==	(P_or_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	or	P
	)
==	(P_or_Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	or	P
	)
==	(P	or	nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	or	P
	)
==	(P	or	nQ_and_nR)
);
