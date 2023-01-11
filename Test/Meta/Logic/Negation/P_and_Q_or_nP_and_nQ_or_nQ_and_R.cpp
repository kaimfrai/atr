import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	nP	and	nQ)
///	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
==	(P	and	nQ	and	nR	or	nP	and	Q)
);
static_assert
(	not
	(P	and	Q	or	nQ	and	R	or	nP	and	nQ)
==	(P	and	nQ	and	nR	or	nP	and	Q)
);

static_assert
(	not
	(nP	and	nQ	or	P	and	Q	or	nQ	and	R)
==	(P	and	nQ	and	nR	or	nP	and	Q)
);
static_assert
(	not
	(nP	and	nQ	or	nQ	and	R	or	P	and	Q)
==	(P	and	nQ	and	nR	or	nP	and	Q)
);

static_assert
(	not
	(nQ	and	R	or	P	and	Q	or	nP	and	nQ)
==	(P	and	nQ	and	nR	or	nP	and	Q)
);
static_assert
(	not
	(nQ	and	R	or	nP	and	nQ	or	P	and	Q)
==	(P	and	nQ	and	nR	or	nP	and	Q)
);
