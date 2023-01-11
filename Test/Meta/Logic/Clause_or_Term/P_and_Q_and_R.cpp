import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	nR)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q)
);

static_assert
(	(	(P	and	nQ)
	or	(P	and	Q	and	R)
	)
==	(P	and	nQ	or	P	and	R)
);
static_assert
(	(	(P	and	nQ	and	R)
	or	(P	and	Q	and	R)
	)
==	(P	and	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);

static_assert
(	(	(P	and	R)
	or	(P	and	Q	and	R)
	)
==	(P	and	R)
);
static_assert
(	(	(P	and	nR)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	or	P	and	nR)
);

static_assert
(	(	(nP	and	Q)
	or	(P	and	Q	and	R)
	)
==	(nP	and	Q	or	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	R)
	or	(P	and	Q	and	R)
	)
==	(Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR)
);

static_assert
(	(	(nP	and	nQ)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R	or	nP	and	nQ)
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
);

static_assert
(	(	(nP	and	R)
	or	(P	and	Q	and	R)
	)
==	(nP	and	R	or	Q	and	R)
);
static_assert
(	(	(nP	and	nR)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R	or	nP	and	nR)
);

static_assert
(	(	(Q	and	R)
	or	(P	and	Q	and	R)
	)
==	(Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	or	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	or	(P	and	Q	and	R)
	)
==	(P	and	R	or	nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	or	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R	or	nQ	and	nR)
);
