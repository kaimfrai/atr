import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	nQ	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	nP	and	nQ	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	R	or	nP	and	nQ	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	R	or	nP	and	nQ	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR)
);

static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R	or	P	and	Q	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	nQ	and	nR	or	nP	and	nQ	and	R	or	P	and	Q	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	nQ	and	nR	or	nP	and	nQ	and	R	or	nP	and	Q	and	nR	or	P	and	Q	and	R)
);

static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	Q	and	nR	or	P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	nQ	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	Q	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	nP	and	nQ	and	R	or	P	and	Q	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	Q	and	nR	or	nP	and	nQ	and	R	or	P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	Q	and	nR	or	nP	and	nQ	and	R	or	P	and	nQ	and	nR	or	P	and	Q	and	R)
);

static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	nQ	and	R	or	P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	nQ	and	R	or	P	and	Q	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	nQ	and	R	or	P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	nQ	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	P	and	Q	and	R)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	nQ	and	R	or	nP	and	Q	and	nR	or	P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(nP	and	nQ	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	P	and	Q	and	R)
);
