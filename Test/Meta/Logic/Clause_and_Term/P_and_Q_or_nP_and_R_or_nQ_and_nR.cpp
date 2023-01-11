import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	nR)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(P	and	nQ)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	nQ	and	nR)
);
static_assert
(	(	(P	and	nQ	and	R)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	F
);
static_assert
(	(	(P	and	nQ	and	nR)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	nQ	and	nR)
);

static_assert
(	(	(P	and	R)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	(P	and	nR)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	nR)
);

static_assert
(	(	(nP	and	Q)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	R)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	F
);

static_assert
(	(	(nP	and	nQ)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	nQ)
);
static_assert
(	(	(nP	and	nQ	and	R)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	nQ	and	nR)
);

static_assert
(	(	(nP	and	R)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	R)
);
static_assert
(	(	(nP	and	nR)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	nQ	and	nR)
);

static_assert
(	(	(nQ	and	R)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nQ	and	nR)
);

static_assert
(	(	(Q	and	R)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	and	nR)
);
