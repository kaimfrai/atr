import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	(P	and	Q	and	R)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	(P	and	Q	and	nR)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);

static_assert
(	(	(P	and	nQ)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	(P	and	nQ	and	R)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);

static_assert
(	(	(P	and	R)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	(P	and	nR)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);

static_assert
(	(	(nP	and	Q)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	or	Q	or	nR)
);
static_assert
(	(	(nP	and	Q	and	R)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	or	Q	or	nR)
);

static_assert
(	(	(nP	and	nQ)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);

static_assert
(	(	(nP	and	R)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	(nP	and	nR)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	or	Q	or	nR)
);

static_assert
(	(	(Q	and	R)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	(Q	and	nR)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	or	Q	or	nR)
);

static_assert
(	(	(nQ	and	R)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	(nQ	and	nR)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
