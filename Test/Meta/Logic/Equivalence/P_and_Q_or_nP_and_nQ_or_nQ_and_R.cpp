import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	nP	and	nQ)
///	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	or	P	and	R	or	nP	and	nQ)
==	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
);
static_assert
(	(P	and	Q	or	P	and	R	or	nP	and	nQ)
==	(P	and	Q	or	nQ	and	R	or	nP	and	nQ)
);

static_assert
(	(P	and	Q	or	P	and	R	or	nP	and	nQ)
==	(nP	and	nQ	or	P	and	Q	or	nQ	and	R)
);
static_assert
(	(P	and	Q	or	P	and	R	or	nP	and	nQ)
==	(nP	and	nQ	or	nQ	and	R	or	P	and	Q)
);

static_assert
(	(P	and	Q	or	P	and	R	or	nP	and	nQ)
==	(nQ	and	R	or	P	and	Q	or	nP	and	nQ)
);
static_assert
(	(P	and	Q	or	P	and	R	or	nP	and	nQ)
==	(nQ	and	R	or	nP	and	nQ	or	P	and	Q)
);
