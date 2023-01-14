import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	T
/// ************************************************************************************************
static_assert
(	(	T
	and	T
	)
==	T
);
static_assert
(	(	F
	and	T
	)
==	F
);

static_assert
(	(	P
	and	T
	)
==	P
);
static_assert
(	(	nP
	and	T
	)
==	nP
);

static_assert
(	(	(P_and_Q)
	and	T
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	and	T
	)
==	(P_and_Q_and_R)
);
