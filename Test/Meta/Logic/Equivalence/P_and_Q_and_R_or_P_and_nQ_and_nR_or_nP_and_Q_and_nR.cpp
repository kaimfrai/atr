import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
/// ************************************************************************************************
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR)
);

static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	P	and	Q	and	R)
);

static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(nP	and	Q	and	nR	or	P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	P	and	Q	and	R)
);
