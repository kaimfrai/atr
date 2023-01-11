import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	or	P	and	R)
==	(nP	or	nQ	and	nR)
);
static_assert
(	not
	(P	and	R	or	P	and	Q)
==	(nP	or	nQ	and	nR)
);
