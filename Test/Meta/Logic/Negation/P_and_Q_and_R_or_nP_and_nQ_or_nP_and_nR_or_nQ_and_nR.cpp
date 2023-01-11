import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	nQ	or	nQ	and	nR	or	nP	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	nR	or	nP	and	nQ	or	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	nR	or	nQ	and	nR	or	nP	and	nQ)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(P	and	Q	and	R	or	nQ	and	nR	or	nP	and	nQ	or	nP	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(P	and	Q	and	R	or	nQ	and	nR	or	nP	and	nR	or	nP	and	nQ)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);

static_assert
(	not
	(nP	and	nQ	or	P	and	Q	and	R	or	nP	and	nR	or	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nQ	or	P	and	Q	and	R	or	nQ	and	nR	or	nP	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nQ	or	nP	and	nR	or	P	and	Q	and	R	or	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nQ	or	nP	and	nR	or	nQ	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nQ	or	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nQ	or	nQ	and	nR	or	nP	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);

static_assert
(	not
	(nP	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	or	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nR	or	P	and	Q	and	R	or	nQ	and	nR	or	nP	and	nQ)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nR	or	nP	and	nQ	or	P	and	Q	and	R	or	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nR	or	nP	and	nQ	or	nQ	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nR	or	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	nQ)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nP	and	nR	or	nQ	and	nR	or	nP	and	nQ	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);

static_assert
(	not
	(nQ	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nQ	and	nR	or	P	and	Q	and	R	or	nP	and	nR	or	nP	and	nQ)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nQ	and	nR	or	nP	and	nQ	or	P	and	Q	and	R	or	nP	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nQ	and	nR	or	nP	and	nQ	or	nP	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nQ	and	nR	or	nP	and	nR	or	P	and	Q	and	R	or	nP	and	nQ)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
static_assert
(	not
	(nQ	and	nR	or	nP	and	nR	or	nP	and	nQ	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R)
);
