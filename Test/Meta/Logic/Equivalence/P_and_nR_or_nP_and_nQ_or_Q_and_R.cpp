import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
);
static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(P	and	nR	or	Q	and	R	or	nP	and	nQ)
);

static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(nP	and	nQ	or	P	and	nR	or	Q	and	R)
);
static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(nP	and	nQ	or	Q	and	R	or	P	and	nR)
);

static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(Q	and	R	or	P	and	nR	or	nP	and	nQ)
);
static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(Q	and	R	or	nP	and	nQ	or	P	and	nR)
);
