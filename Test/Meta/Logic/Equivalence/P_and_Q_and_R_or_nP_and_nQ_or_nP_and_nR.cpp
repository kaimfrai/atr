import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
/// ************************************************************************************************
static_assert
(	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
==	(P	and	Q	and	R	or	nP	and	nR	or	nP	and	nQ)
);

static_assert
(	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
==	(nP	and	nQ	or	P	and	Q	and	R	or	nP	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
==	(nP	and	nQ	or	nP	and	nR	or	P	and	Q	and	R)
);

static_assert
(	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
==	(nP	and	nR	or	P	and	Q	and	R	or	nP	and	nQ)
);
static_assert
(	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
==	(nP	and	nR	or	nP	and	nQ	or	P	and	Q	and	R)
);
