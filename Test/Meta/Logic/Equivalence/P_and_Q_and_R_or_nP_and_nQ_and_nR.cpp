import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
==	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
==	(nP	and	nQ	and	nR	or	P	and	Q	and	R)
);
