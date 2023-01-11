import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	nR)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(P	and	nQ)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	nQ	and	R)
);
static_assert
(	(	(P	and	nQ	and	R)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	nQ	and	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(F)
);

static_assert
(	(	(P	and	R)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	R)
);
static_assert
(	(	(P	and	nR)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(nP	and	Q)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	R)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(F)
);

static_assert
(	(	(nP	and	nQ)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	nQ)
);
static_assert
(	(	(nP	and	nQ	and	R)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	nQ	and	nR)
);

static_assert
(	(	(nP	and	R)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	R)
);
static_assert
(	(	(nP	and	nR)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	nQ	and	nR)
);

static_assert
(	(	(Q	and	R)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	nQ	and	nR)
);
