import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(P_and_Q_and_R)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(P_and_Q_and_nR)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);

static_assert
(	(	(P_and_nQ)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(P_and_nQ_and_R)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);

static_assert
(	(	(P_and_R)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(P_and_nR)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);

static_assert
(	(	(nP_and_Q)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(nP_and_Q_and_R)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);

static_assert
(	(	(nP_and_nQ)
	or	(P	or	Q	or	R)
	)
==	T
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	(P	or	Q	or	R)
	)
==	T
);

static_assert
(	(	(nP_and_R)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(nP_and_nR)
	or	(P	or	Q	or	R)
	)
==	T
);

static_assert
(	(	(Q_and_R)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(Q_and_nR)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);

static_assert
(	(	(nQ_and_R)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(nQ_and_nR)
	or	(P	or	Q	or	R)
	)
==	T
);
