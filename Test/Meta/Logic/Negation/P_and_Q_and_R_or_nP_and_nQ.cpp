import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	nQ)
==	(P	and	nQ	or	P	and	nR	or	nP	and	Q)
);
static_assert
(	not
	(nP	and	nQ	or	P	and	Q	and	R)
==	(P	and	nQ	or	P	and	nR	or	nP	and	Q)
);
