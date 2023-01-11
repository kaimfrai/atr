import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	R)
/// ************************************************************************************************
static_assert
(	not
	(P	and	Q	or	R)
==	(nP	and	nR	or	nQ	and	nR)
);
static_assert
(	not
	(R	or	P	and	Q)
==	(nP	and	nR	or	nQ	and	nR)
);
