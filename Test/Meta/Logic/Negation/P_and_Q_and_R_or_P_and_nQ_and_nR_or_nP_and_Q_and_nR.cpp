import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
==	(P	and	Q	and	nR	or	nP	and	nQ	or	nP	and	R	or	nQ	and	R)
);
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	Q	and	nR	or	P	and	nQ	and	nR)
==	(P	and	Q	and	nR	or	nP	and	nQ	or	nP	and	R	or	nQ	and	R)
);

static_assert
(	not
	(P	and	nQ	and	nR	or	P	and	Q	and	R	or	nP	and	Q	and	nR)
==	(P	and	Q	and	nR	or	nP	and	nQ	or	nP	and	R	or	nQ	and	R)
);
static_assert
(	not
	(P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	nP	and	nQ	or	nP	and	R	or	nQ	and	R)
);

static_assert
(	not
	(nP	and	Q	and	nR	or	P	and	Q	and	R	or	P	and	nQ	and	nR)
==	(P	and	Q	and	nR	or	nP	and	nQ	or	nP	and	R	or	nQ	and	R)
);
static_assert
(	not
	(nP	and	Q	and	nR	or	P	and	nQ	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	nR	or	nP	and	nQ	or	nP	and	R	or	nQ	and	R)
);
