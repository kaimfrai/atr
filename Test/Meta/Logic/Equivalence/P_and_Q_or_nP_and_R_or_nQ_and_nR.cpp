import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(P	and	Q	or	nQ	and	nR	or	nP	and	R)
);

static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(nP	and	R	or	P	and	Q	or	nQ	and	nR)
);
static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(nP	and	R	or	nQ	and	nR	or	P	and	Q)
);

static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(nQ	and	nR	or	P	and	Q	or	nP	and	R)
);
static_assert
(	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(nQ	and	nR	or	nP	and	R	or	P	and	Q)
);
