import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	and	R	or	P	and	nQ	and	nR)
==	(nP	or	nQ	and	R	or	Q	and	nR)
);
static_assert
(	not
	(P	and	nQ	and	nR	or	P	and	Q	and	R)
==	(nP	or	nQ	and	R	or	Q	and	nR)
);
