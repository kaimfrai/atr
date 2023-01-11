import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ	or	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	or	nP	and	nQ	or	R)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(P	and	Q	or	R	or	nP	and	nQ)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);

static_assert
(	not
	(nP	and	nQ	or	P	and	Q	or	R)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(nP	and	nQ	or	R	or	P	and	Q)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);

static_assert
(	not
	(R	or	P	and	Q	or	nP	and	nQ)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);
static_assert
(	not
	(R	or	nP	and	nQ	or	P	and	Q)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);
