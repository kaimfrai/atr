import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(P	and	Q	or	nP	and	nQ)
==	(P	and	Q	or	nP	and	nQ)
);
static_assert
(	(P	and	Q	or	nP	and	nQ)
==	(nP	and	nQ	or	P	and	Q)
);
