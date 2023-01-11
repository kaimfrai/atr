import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(	(P	and	Q	and	R)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(	(P	and	Q	and	nR)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	or	nP	and	nQ	or	nP	and	nR)
);

static_assert
(	(	(P	and	nQ)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	R	or	nP	and	nR	or	nQ)
);
static_assert
(	(	(P	and	nQ	and	R)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	R	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nQ	and	nR	or	nP	and	nR)
);

static_assert
(	(	(P	and	R)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	R	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(	(P	and	nR)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	or	nP	and	nQ	or	nR)
);

static_assert
(	(	(nP	and	Q)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(nP	or	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	R)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(nP	or	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);

static_assert
(	(	(nP	and	nQ)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);

static_assert
(	(	(nP	and	R)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(nP	or	Q	and	R)
);
static_assert
(	(	(nP	and	nR)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);

static_assert
(	(	(Q	and	R)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(nP	or	Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	or	nP	and	nQ	or	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	R	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(	(nQ	and	nR)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);
