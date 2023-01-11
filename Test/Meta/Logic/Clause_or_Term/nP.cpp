import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	nP
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	nP
	)
==	(nP	or	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	or	nP
	)
==	(nP	or	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	nR)
	or	nP
	)
==	(nP	or	Q	and	nR)
);

static_assert
(	(	(P	and	nQ)
	or	nP
	)
==	(nP	or	nQ)
);
static_assert
(	(	(P	and	nQ	and	R)
	or	nP
	)
==	(nP	or	nQ	and	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	nP
	)
==	(nP	or	nQ	and	nR)
);

static_assert
(	(	(P	and	R)
	or	nP
	)
==	(nP	or	R)
);
static_assert
(	(	(P	and	nR)
	or	nP
	)
==	(nP	or	nR)
);

static_assert
(	(	(nP	and	Q)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP	and	Q	and	R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(nP	and	nQ)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(nP	and	R)
	or	nP
	)
==	nP
);
static_assert
(	(	(nP	and	nR)
	or	nP
	)
==	nP
);

static_assert
(	(	(Q	and	R)
	or	nP
	)
==	(nP	or	Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	or	nP
	)
==	(nP	or	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	or	nP
	)
==	(nP	or	nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	or	nP
	)
==	(nP	or	nQ	and	nR)
);
