import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	(P_and_Q)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q	or	nP_and_nQ	or	nR)
);
static_assert
(	(	(P_and_Q_and_R)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
static_assert
(	(	(P_and_Q_and_nR)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q	or	nP_and_nQ	or	nR)
);

static_assert
(	(	(P_and_nQ)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);
static_assert
(	(	(P_and_nQ_and_R)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);
static_assert
(	(	(P_and_nQ_and_nR)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nQ_and_nR	or	nP_and_nR)
);

static_assert
(	(	(P_and_R)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);
static_assert
(	(	(P_and_nR)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q	or	nP_and_nQ	or	nR)
);

static_assert
(	(	(nP_and_Q)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);
static_assert
(	(	(nP_and_Q_and_R)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);
static_assert
(	(	(nP_and_Q_and_nR)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);

static_assert
(	(	(nP_and_nQ)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
static_assert
(	(	(nP_and_nQ_and_R)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
static_assert
(	(	(nP_and_nQ_and_nR)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);

static_assert
(	(	(nP_and_R)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);
static_assert
(	(	(nP_and_nR)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);

static_assert
(	(	(Q_and_R)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);
static_assert
(	(	(Q_and_nR)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q	or	nP_and_nQ	or	nR)
);

static_assert
(	(	(nQ_and_R)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);
static_assert
(	(	(nQ_and_nR)
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
