import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(P	and	Q	or	nQ	and	nR	or	nP	and	R)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);

static_assert
(	not
	(nP	and	R	or	P	and	Q	or	nQ	and	nR)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(nP	and	R	or	nQ	and	nR	or	P	and	Q)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);

static_assert
(	not
	(nQ	and	nR	or	P	and	Q	or	nP	and	R)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(nQ	and	nR	or	nP	and	R	or	P	and	Q)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);
