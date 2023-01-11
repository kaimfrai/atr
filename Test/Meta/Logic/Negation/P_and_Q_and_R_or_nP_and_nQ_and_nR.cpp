import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
==	(P	and	nQ	or	nP	and	R	or	Q	and	nR)
);
static_assert
(	not
	(nP	and	nQ	and	nR	or	P	and	Q	and	R)
==	(P	and	nQ	or	nP	and	R	or	Q	and	nR)
);
