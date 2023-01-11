import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	R)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	nR)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);

static_assert
(	(	(P	and	nQ)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	or	Q	and	R)
);
static_assert
(	(	(P	and	nQ	and	R)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	or	Q	and	R)
);

static_assert
(	(	(P	and	R)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);
static_assert
(	(	(P	and	nR)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	or	Q	and	R)
);

static_assert
(	(	(nP	and	Q)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	R	or	Q)
);
static_assert
(	(	(nP	and	Q	and	R)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	R	or	Q)
);

static_assert
(	(	(nP	and	nQ)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	(nP	and	nQ	and	R)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ	and	nR	or	Q	and	R)
);

static_assert
(	(	(nP	and	R)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	(nP	and	nR)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	R	or	nP	and	nR	or	Q)
);

static_assert
(	(	(Q	and	R)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	R	or	Q)
);

static_assert
(	(	(nQ	and	R)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	(nQ	and	nR)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	or	Q	and	R	or	nQ	and	nR)
);
