import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	T
/// ************************************************************************************************
static_assert
(	(	T
	or	T
	)
==	T
);
static_assert
(	(	F
	or	T
	)
==	T
);

static_assert
(	(	P
	or	T
	)
==	T
);
static_assert
(	(	nP
	or	T
	)
==	T
);

static_assert
(	(	(P_and_Q)
	or	T
	)
==	T
);
static_assert
(	(	(P_and_Q_and_R)
	or	T
	)
==	T
);