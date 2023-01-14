import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	F
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	P
	and	(P_and_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	Q
	and	(P_and_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	R
	and	(P_and_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	(P_and_Q)
	and	(P_and_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_R)
	and	(P_and_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	(P_and_nQ)
	and	(P_and_Q_and_R)
	)
==	F
);
static_assert
(	(	(P_and_nQ_and_R)
	and	(P_and_Q_and_R)
	)
==	F
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	(P_and_R)
	and	(P_and_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_nR)
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	(nP_and_Q)
	and	(P_and_Q_and_R)
	)
==	F
);
static_assert
(	(	(nP_and_Q_and_R)
	and	(P_and_Q_and_R)
	)
==	F
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	(nP_and_nQ)
	and	(P_and_Q_and_R)
	)
==	F
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	(P_and_Q_and_R)
	)
==	F
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	(nP_and_R)
	and	(P_and_Q_and_R)
	)
==	F
);
static_assert
(	(	(nP_and_nR)
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	(Q_and_R)
	and	(P_and_Q_and_R)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	(P_and_Q_and_R)
	)
==	F
);

static_assert
(	(	(nQ_and_R)
	and	(P_and_Q_and_R)
	)
==	F
);
static_assert
(	(	(nQ_and_nR)
	and	(P_and_Q_and_R)
	)
==	F
);
