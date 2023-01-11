import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	or	P	and	R	or	Q	and	R)
==	(nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);
static_assert
(	not
	(P	and	Q	or	Q	and	R	or	P	and	R)
==	(nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);

static_assert
(	not
	(P	and	R	or	P	and	Q	or	Q	and	R)
==	(nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);
static_assert
(	not
	(P	and	R	or	Q	and	R	or	P	and	Q)
==	(nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);

static_assert
(	not
	(Q	and	R	or	P	and	Q	or	P	and	R)
==	(nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);
static_assert
(	not
	(Q	and	R	or	P	and	R	or	P	and	Q)
==	(nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);
