import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(P	and	Q	and	R	or	nP	and	nQ)
==	(P	and	Q	and	R	or	nP	and	nQ)
);
static_assert
(	(nP	and	nQ	or	P	and	Q	and	R)
==	(nP	and	nQ	or	P	and	Q	and	R)
);
