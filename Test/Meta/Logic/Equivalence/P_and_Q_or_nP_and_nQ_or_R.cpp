import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ	or	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	or	nP	and	nQ	or	R)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(P	and	Q	or	nP	and	nQ	or	R)
==	(P	and	Q	or	R	or	nP	and	nQ)
);

static_assert
(	(P	and	Q	or	nP	and	nQ	or	R)
==	(nP	and	nQ	or	P	and	Q	or	R)
);
static_assert
(	(P	and	Q	or	nP	and	nQ	or	R)
==	(nP	and	nQ	or	R	or	P	and	Q)
);

static_assert
(	(P	and	Q	or	nP	and	nQ	or	R)
==	(R	or	P	and	Q	or	nP	and	nQ)
);
static_assert
(	(P	and	Q	or	nP	and	nQ	or	R)
==	(R	or	nP	and	nQ	or	P	and	Q)
);
