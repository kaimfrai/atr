import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	F
/// ************************************************************************************************
static_assert
(	(	T
	and	F
	)
==	F
);
static_assert
(	(	F
	and	F
	)
==	F
);

static_assert
(	(	P
	and	F
	)
==	F
);
static_assert
(	(	nP
	and	F
	)
==	F
);

static_assert
(	(	(PQ)
	and	F
	)
==	F
);
static_assert
(	(	(PQR)
	and	F
	)
==	F
);
