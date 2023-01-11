import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	nP	and	nQ)
///	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);
static_assert
(	(	(P	and	Q	and	R)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);
static_assert
(	(	(P	and	Q	and	nR)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);

static_assert
(	(	(P	and	nQ)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	or	nQ)
);
static_assert
(	(	(P	and	nQ	and	R)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	or	nQ)
);

static_assert
(	(	(P	and	R)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);
static_assert
(	(	(P	and	nR)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	or	nQ)
);

static_assert
(	(	(nP	and	Q)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(nP	or	Q	or	R)
);
static_assert
(	(	(nP	and	Q	and	R)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	R	or	nP	and	nQ	or	Q	and	nR)
);

static_assert
(	(	(nP	and	nQ)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);

static_assert
(	(	(nP	and	R)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	(nP	and	nR)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nR	or	nQ	and	R)
);

static_assert
(	(	(Q	and	R)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	(Q	and	nR)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	R	or	nP	and	nQ	or	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	or	nQ)
);
