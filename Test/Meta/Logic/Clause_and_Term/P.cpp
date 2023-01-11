import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	P
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	and	P
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	and	P
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	and	P
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	and	P
	)
==	(P_and_nQ)
);
static_assert
(	(	(P_and_nQ_and_R)
	and	P
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	P
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	and	P
	)
==	(P_and_R)
);
static_assert
(	(	(P_and_nR)
	and	P
	)
==	(P_and_nR)
);

static_assert
(	(	(nP_and_Q)
	and	P
	)
==	F
);
static_assert
(	(	(nP_and_Q_and_R)
	and	P
	)
==	F
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	P
	)
==	F
);

static_assert
(	(	(nP_and_nQ)
	and	P
	)
==	F
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	P
	)
==	F
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	P
	)
==	F
);

static_assert
(	(	(nP_and_R)
	and	P
	)
==	F
);
static_assert
(	(	(nP_and_nR)
	and	P
	)
==	F
);

static_assert
(	(	(Q_and_R)
	and	P
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	P
	)
==	(P_and_Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	P
	)
==	(P_and_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	P
	)
==	(P_and_nQ_and_nR)
);
