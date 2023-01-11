import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	nQ	and	R	or	nP	and	Q	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R	or	P	and	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	nQ	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	nQ	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);

static_assert
(	not
	(P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	and	R	or	nP	and	Q	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	nQ	and	nR	or	nP	and	nQ	and	R	or	P	and	Q	and	R	or	nP	and	Q	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	and	nQ	and	nR	or	nP	and	nQ	and	R	or	nP	and	Q	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);

static_assert
(	not
	(nP	and	Q	and	nR	or	P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	nQ	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	Q	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	and	R	or	P	and	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	nQ	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	nP	and	nQ	and	R	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	Q	and	nR	or	nP	and	nQ	and	R	or	P	and	Q	and	R	or	P	and	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	Q	and	nR	or	nP	and	nQ	and	R	or	P	and	nQ	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);

static_assert
(	not
	(nP	and	nQ	and	R	or	P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	nQ	and	R	or	P	and	Q	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	nQ	and	R	or	P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	Q	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	nQ	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	nQ	and	R	or	nP	and	Q	and	nR	or	P	and	Q	and	R	or	P	and	nQ	and	nR)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	not
	(nP	and	nQ	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	P	and	nQ	and	R	or	nP	and	Q	and	R	or	nP	and	nQ	and	nR)
);
