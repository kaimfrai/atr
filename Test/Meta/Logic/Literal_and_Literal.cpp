import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	P
/// ************************************************************************************************
static_assert
(	(	P
	and	P
	)
==	P
);
static_assert
(	(	nP
	and	P
	)
==	F
);

static_assert
(	(	Q
	and	P
	)
==	(P_and_Q)
);

static_assert
(	(	nQ
	and	P
	)
==	(P_and_nQ)
);

/// ************************************************************************************************
///	nP
/// ************************************************************************************************
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
