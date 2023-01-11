import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	not
	(P	or	Q	or	R)
==	(nP	and	nQ	and	nR)
);
static_assert
(	not
	(P	or	R	or	Q)
==	(nP	and	nQ	and	nR)
);

static_assert
(	not
	(Q	or	P	or	R)
==	(nP	and	nQ	and	nR)
);
static_assert
(	not
	(Q	or	R	or	P)
==	(nP	and	nQ	and	nR)
);

static_assert
(	not
	(R	or	P	or	Q)
==	(nP	and	nQ	and	nR)
);
static_assert
(	not
	(R	or	Q	or	P)
==	(nP	and	nQ	and	nR)
);
