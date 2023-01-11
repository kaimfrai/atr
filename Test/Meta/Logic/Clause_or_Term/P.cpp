import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	P
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	P
	)
==	P
);
static_assert
(	(	(P	and	Q	and	R)
	or	P
	)
==	P
);
static_assert
(	(	(P	and	Q	and	nR)
	or	P
	)
==	P
);

static_assert
(	(	(P	and	nQ)
	or	P
	)
==	P
);
static_assert
(	(	(P	and	nQ	and	R)
	or	P
	)
==	P
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	P
	)
==	P
);

static_assert
(	(	(P	and	R)
	or	P
	)
==	P
);
static_assert
(	(	(P	and	nR)
	or	P
	)
==	P
);

static_assert
(	(	(nP	and	Q)
	or	P
	)
==	(P	or	Q)
);
static_assert
(	(	(nP	and	Q	and	R)
	or	P
	)
==	(P	or	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	P
	)
==	(P	or	Q	and	nR)
);

static_assert
(	(	(nP	and	nQ)
	or	P
	)
==	(P	or	nQ)
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	P
	)
==	(P	or	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	P
	)
==	(P	or	nQ	and	nR)
);

static_assert
(	(	(nP	and	R)
	or	P
	)
==	(P	or	R)
);
static_assert
(	(	(nP	and	nR)
	or	P
	)
==	(P	or	nR)
);

static_assert
(	(	(Q	and	R)
	or	P
	)
==	(P	or	Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	or	P
	)
==	(P	or	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	or	P
	)
==	(P	or	nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	or	P
	)
==	(P	or	nQ	and	nR)
);
