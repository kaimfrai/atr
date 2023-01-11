import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(P	and	nR	or	Q	and	R	or	nP	and	nQ)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);

static_assert
(	not
	(nP	and	nQ	or	P	and	nR	or	Q	and	R)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(nP	and	nQ	or	Q	and	R	or	P	and	nR)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);

static_assert
(	not
	(Q	and	R	or	P	and	nR	or	nP	and	nQ)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(Q	and	R	or	nP	and	nQ	or	P	and	nR)
==	(P	and	nQ	and	R	or	nP	and	Q	and	nR)
);
