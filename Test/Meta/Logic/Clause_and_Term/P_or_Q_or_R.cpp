import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	and	(P	or	Q	or	R)
	)
==	(P	and	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	and	(P	or	Q	or	R)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	nR)
	and	(P	or	Q	or	R)
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(P	and	nQ)
	and	(P	or	Q	or	R)
	)
==	(P	and	nQ)
);
static_assert
(	(	(P	and	nQ	and	R)
	and	(P	or	Q	or	R)
	)
==	(P	and	nQ	and	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	and	(P	or	Q	or	R)
	)
==	(P	and	nQ	and	nR)
);

static_assert
(	(	(P	and	R)
	and	(P	or	Q	or	R)
	)
==	(P	and	R)
);
static_assert
(	(	(P	and	nR)
	and	(P	or	Q	or	R)
	)
==	(P	and	nR)
);

static_assert
(	(	(nP	and	Q)
	and	(P	or	Q	or	R)
	)
==	(nP	and	Q)
);
static_assert
(	(	(nP	and	Q	and	R)
	and	(P	or	Q	or	R)
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	and	(P	or	Q	or	R)
	)
==	(nP	and	Q	and	nR)
);

static_assert
(	(	(nP	and	nQ)
	and	(P	or	Q	or	R)
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	R)
	and	(P	or	Q	or	R)
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	and	(P	or	Q	or	R)
	)
==	(F)
);

static_assert
(	(	(nP	and	R)
	and	(P	or	Q	or	R)
	)
==	(nP	and	R)
);
static_assert
(	(	(nP	and	nR)
	and	(P	or	Q	or	R)
	)
==	(nP	and	Q	and	nR)
);

static_assert
(	(	(Q	and	R)
	and	(P	or	Q	or	R)
	)
==	(Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	and	(P	or	Q	or	R)
	)
==	(Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	and	(P	or	Q	or	R)
	)
==	(nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	and	(P	or	Q	or	R)
	)
==	(P	and	nQ	and	nR)
);
