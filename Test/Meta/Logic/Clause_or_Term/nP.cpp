import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	nP
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	or	nP
	)
==	(nP_or_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	or	nP
	)
==	(nP_or_Q_and_R)
);
static_assert
(	(	(P_and_Q_and_nR)
	or	nP
	)
==	(nP_or_Q_and_nR)
);

static_assert
(	(	(P_and_nQ)
	or	nP
	)
==	(nP	or	nQ)
);
static_assert
(	(	(P_and_nQ_and_R)
	or	nP
	)
==	(nP	or	nQ_and_R)
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	nP
	)
==	(nP	or	nQ_and_nR)
);

static_assert
(	(	(P_and_R)
	or	nP
	)
==	(nP	or	R)
);
static_assert
(	(	(P_and_nR)
	or	nP
	)
==	(nP	or	nR)
);

static_assert
(	(	(nP_and_Q)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_Q_and_R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(nP_and_nQ)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(nP_and_R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP_and_nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(Q_and_R)
	or	nP
	)
==	(nP_or_Q_and_R)
);
static_assert
(	(	(Q_and_nR)
	or	nP
	)
==	(nP_or_Q_and_nR)
);

static_assert
(	(	(nQ_and_R)
	or	nP
	)
==	(nP	or	nQ_and_R)
);
static_assert
(	(	(nQ_and_nR)
	or	nP
	)
==	(nP	or	nQ_and_nR)
);
