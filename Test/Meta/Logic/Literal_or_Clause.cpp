import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q)
	)
==	P
);
static_assert
(	(	nP
	or	(P_and_Q)
	)
==	(nP_or_Q)
);

static_assert
(	(	Q
	or	(P_and_Q)
	)
==	Q
);
static_assert
(	(	nQ
	or	(P_and_Q)
	)
==	(P_or_nQ)
);

static_assert
(	(	R
	or	(P_and_Q)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q)
	)
==	(P_and_Q_or_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R)
	)
==	P
);
static_assert
(	(	nP
	or	(P_and_Q_and_R)
	)
==	(nP_or_Q_and_R)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R)
	)
==	Q
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R)
	)
==	(P_and_R	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R)
	)
==	R
);
static_assert
(	(	nR
	or	(P_and_Q_and_R)
	)
==	(P_and_Q_or_nR)
);
