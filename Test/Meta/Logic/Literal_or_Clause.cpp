import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q)
	)
==	P
);
static_assert
(	(	nP
	or	(P	and	Q)
	)
==	(nP	or	Q)
);

static_assert
(	(	Q
	or	(P	and	Q)
	)
==	Q
);
static_assert
(	(	nQ
	or	(P	and	Q)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q)
	)
==	(P	and	Q	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	and	R)
	)
==	P
);
static_assert
(	(	nP
	or	(P	and	Q	and	R)
	)
==	(nP	or	Q	and	R)
);

static_assert
(	(	Q
	or	(P	and	Q	and	R)
	)
==	Q
);
static_assert
(	(	nQ
	or	(P	and	Q	and	R)
	)
==	(P	and	R	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	and	R)
	)
==	R
);
static_assert
(	(	nR
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	or	nR)
);
