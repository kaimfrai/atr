import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	nP
/// ************************************************************************************************
static_assert
(	(	T
	and	nP
	)
==	nP
);
static_assert
(	(	F
	and	nP
	)
==	F
);

static_assert
(	(	P
	and	nP
	)
==	F
);
static_assert
(	(	nP
	and	nP
	)
==	nP
);

static_assert
(	(	Q
	and	nP
	)
==	(nP_and_Q)
);
static_assert
(	(	nQ
	and	nP
	)
==	(nP_and_nQ)
);

static_assert
(	(	(P_and_Q)
	and	nP
	)
==	F
);
static_assert
(	(	(P_and_Q_and_R)
	and	nP
	)
==	F
);
static_assert
(	(	(P_and_Q_and_nR)
	and	nP
	)
==	F
);

static_assert
(	(	(P_and_nQ)
	and	nP
	)
==	F
);
static_assert
(	(	(P_and_nQ_and_R)
	and	nP
	)
==	F
);
static_assert
(	(	(P_and_nQ_and_nR)
	and	nP
	)
==	F
);

static_assert
(	(	(P_and_R)
	and	nP
	)
==	F
);
static_assert
(	(	(P_and_nR)
	and	nP
	)
==	F
);

static_assert
(	(	(nP_and_Q)
	and	nP
	)
==	(nP_and_Q)
);
static_assert
(	(	(nP_and_Q_and_R)
	and	nP
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(nP_and_Q_and_nR)
	and	nP
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	and	nP
	)
==	(nP_and_nQ)
);
static_assert
(	(	(nP_and_nQ_and_R)
	and	nP
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	and	nP
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	(nP_and_R)
	and	nP
	)
==	(nP_and_R)
);
static_assert
(	(	(nP_and_nR)
	and	nP
	)
==	(nP_and_nR)
);

static_assert
(	(	(Q_and_R)
	and	nP
	)
==	(nP_and_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	and	nP
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	and	nP
	)
==	(nP_and_nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	and	nP
	)
==	(nP_and_nQ_and_nR)
);
