import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q)
	)
==	(P_and_Q)
);
static_assert
(	(	nP
	and	(P_and_Q)
	)
==	F
);

static_assert
(	(	Q
	and	(P_and_Q)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q)
	)
==	F
);

static_assert
(	(	R
	and	(P_and_Q)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R)
/// ************************************************************************************************
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
