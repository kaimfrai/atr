import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	(P	and	Q)
	)
==	(P	and	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	or	(P	and	Q)
	)
==	(P	and	Q)
);
static_assert
(	(	(P	and	Q	and	nR)
	or	(P	and	Q)
	)
==	(P	and	Q)
);

static_assert
(	(	(P	and	nQ)
	or	(P	and	Q)
	)
==	P
);
static_assert
(	(	(P	and	nQ	and	R)
	or	(P	and	Q)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	(P	and	Q)
	)
==	(P	and	Q	or	P	and	nR)
);

static_assert
(	(	(P	and	R)
	or	(P	and	Q)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	(P	and	nR)
	or	(P	and	Q)
	)
==	(P	and	Q	or	P	and	nR)
);

static_assert
(	(	(nP	and	Q)
	or	(P	and	Q)
	)
==	Q
);
static_assert
(	(	(nP	and	Q	and	R)
	or	(P	and	Q)
	)
==	(P	and	Q	or	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	(P	and	Q)
	)
==	(P	and	Q	or	Q	and	nR)
);

static_assert
(	(	(nP	and	nQ)
	or	(P	and	Q)
	)
==	(P	and	Q	or	nP	and	nQ)
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	(P	and	Q)
	)
==	(P	and	Q	or	nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	(P	and	Q)
	)
==	(P	and	Q	or	nP	and	nQ	and	nR)
);

static_assert
(	(	(nP	and	R)
	or	(P	and	Q)
	)
==	(P	and	Q	or	nP	and	R)
);
static_assert
(	(	(nP	and	nR)
	or	(P	and	Q)
	)
==	(P	and	Q	or	nP	and	nR)
);

static_assert
(	(	(Q	and	R)
	or	(P	and	Q)
	)
==	(P	and	Q	or	Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	or	(P	and	Q)
	)
==	(P	and	Q	or	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	or	(P	and	Q)
	)
==	(P	and	Q	or	nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	or	(P	and	Q)
	)
==	(P	and	Q	or	nQ	and	nR)
);
