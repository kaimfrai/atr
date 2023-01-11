import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	and	R)
==	(nP	or	nQ	or	nR)
);
static_assert
(	not
	(P	and	R	and	Q)
==	(nP	or	nQ	or	nR)
);

static_assert
(	not
	(Q	and	P	and	R)
==	(nP	or	nQ	or	nR)
);
static_assert
(	not
	(Q	and	R	and	P)
==	(nP	or	nQ	or	nR)
);

static_assert
(	not
	(R	and	P	and	Q)
==	(nP	or	nQ	or	nR)
);
static_assert
(	not
	(R	and	Q	and	P)
==	(nP	or	nQ	or	nR)
);
