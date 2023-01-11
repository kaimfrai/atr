import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q)
	)
==	(P	and	Q)
);
static_assert
(	(	nP
	and	(P	and	Q)
	)
==	F
);

static_assert
(	(	Q
	and	(P	and	Q)
	)
==	(P	and	Q)
);
static_assert
(	(	nQ
	and	(P	and	Q)
	)
==	F
);

static_assert
(	(	R
	and	(P	and	Q)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q)
	)
==	(P	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nP
	and	(P	and	Q	and	R)
	)
==	F
);

static_assert
(	(	Q
	and	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	Q	and	R)
	)
==	F
);

static_assert
(	(	R
	and	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	and	R)
	)
==	F
);
