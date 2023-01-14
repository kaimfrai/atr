import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	F
/// ************************************************************************************************
static_assert
(	(	T
	or	F
	)
==	T
);
static_assert
(	(	F
	or	F
	)
==	F
);

static_assert
(	(	P
	or	F
	)
==	P
);
static_assert
(	(	nP
	or	F
	)
==	nP
);

static_assert
(	(	(P_and_Q)
	or	F
	)
==	(P_and_Q)
);
static_assert
(	(	(P_and_Q_and_R)
	or	F
	)
==	(P_and_Q_and_R)
);
