import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	or	nP	and	R)
==	(P	and	nQ	or	nP	and	nR)
);
static_assert
(	not
	(nP	and	R	or	P	and	Q)
==	(P	and	nQ	or	nP	and	nR)
);
