import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	and	(P	and	Q	or	R)
	)
==	(P	and	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	and	(P	and	Q	or	R)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	nR)
	and	(P	and	Q	or	R)
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(P	and	nQ)
	and	(P	and	Q	or	R)
	)
==	(P	and	nQ	and	R)
);
static_assert
(	(	(P	and	nQ	and	R)
	and	(P	and	Q	or	R)
	)
==	(P	and	nQ	and	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	and	(P	and	Q	or	R)
	)
==	(F)
);

static_assert
(	(	(P	and	R)
	and	(P	and	Q	or	R)
	)
==	(P	and	R)
);
static_assert
(	(	(P	and	nR)
	and	(P	and	Q	or	R)
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(nP	and	Q)
	and	(P	and	Q	or	R)
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	R)
	and	(P	and	Q	or	R)
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	and	(P	and	Q	or	R)
	)
==	(F)
);

static_assert
(	(	(nP	and	nQ)
	and	(P	and	Q	or	R)
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	R)
	and	(P	and	Q	or	R)
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	and	(P	and	Q	or	R)
	)
==	(F)
);

static_assert
(	(	(nP	and	R)
	and	(P	and	Q	or	R)
	)
==	(nP	and	R)
);
static_assert
(	(	(nP	and	nR)
	and	(P	and	Q	or	R)
	)
==	(F)
);

static_assert
(	(	(Q	and	R)
	and	(P	and	Q	or	R)
	)
==	(Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	and	(P	and	Q	or	R)
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	and	(P	and	Q	or	R)
	)
==	(nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	and	(P	and	Q	or	R)
	)
==	(F)
);
