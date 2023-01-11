import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	(P	and	Q	and	nR)
	or	(P	or	Q)
	)
==	(P	or	Q)
);

static_assert
(	(	(P	and	nQ)
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	(P	and	nQ	and	R)
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	(P	or	Q)
	)
==	(P	or	Q)
);

static_assert
(	(	(P	and	R)
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	(P	and	nR)
	or	(P	or	Q)
	)
==	(P	or	Q)
);

static_assert
(	(	(nP	and	Q)
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	(nP	and	Q	and	R)
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	(P	or	Q)
	)
==	(P	or	Q)
);

static_assert
(	(	(nP	and	nQ)
	or	(P	or	Q)
	)
==	T
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	(P	or	Q)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	(P	or	Q)
	)
==	(P	or	Q	or	nR)
);

static_assert
(	(	(nP	and	R)
	or	(P	or	Q)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(nP	and	nR)
	or	(P	or	Q)
	)
==	(P	or	Q	or	nR)
);

static_assert
(	(	(Q	and	R)
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	(Q	and	nR)
	or	(P	or	Q)
	)
==	(P	or	Q)
);

static_assert
(	(	(nQ	and	R)
	or	(P	or	Q)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	(nQ	and	nR)
	or	(P	or	Q)
	)
==	(P	or	Q	or	nR)
);
