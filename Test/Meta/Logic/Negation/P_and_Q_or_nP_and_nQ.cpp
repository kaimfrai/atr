import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	or	nP	and	nQ)
==	(P	and	nQ	or	nP	and	Q)
);
static_assert
(	not
	(nP	and	nQ	or	P	and	Q)
==	(P	and	nQ	or	nP	and	Q)
);
