import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	(P_and_Q_and_nR)
	or	(P_or_Q)
	)
==	(P_or_Q)
);

static_assert
(	(	(P_and_nQ)
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	(P_and_nQ_and_R)
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	(P_or_Q)
	)
==	(P_or_Q)
);

static_assert
(	(	(P_and_R)
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	(P_and_nR)
	or	(P_or_Q)
	)
==	(P_or_Q)
);

static_assert
(	(	(nP_and_Q)
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	(nP_and_Q_and_R)
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	(P_or_Q)
	)
==	(P_or_Q)
);

static_assert
(	(	(nP_and_nQ)
	or	(P_or_Q)
	)
==	T
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	(P_or_Q)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	(P_or_Q)
	)
==	(P_or_Q	or	nR)
);

static_assert
(	(	(nP_and_R)
	or	(P_or_Q)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(nP_and_nR)
	or	(P_or_Q)
	)
==	(P_or_Q	or	nR)
);

static_assert
(	(	(Q_and_R)
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	(Q_and_nR)
	or	(P_or_Q)
	)
==	(P_or_Q)
);

static_assert
(	(	(nQ_and_R)
	or	(P_or_Q)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	(nQ_and_nR)
	or	(P_or_Q)
	)
==	(P_or_Q	or	nR)
);
