import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	or	nP	and	R)
==	(P	and	Q	or	nP	and	R)
);
static_assert
(	(P	and	Q	or	nP	and	R)
==	(nP	and	R	or	P	and	Q)
);
