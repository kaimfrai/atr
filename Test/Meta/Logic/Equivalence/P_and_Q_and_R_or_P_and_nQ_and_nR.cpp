import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(P	and	nQ	and	nR	or	P	and	Q	and	R)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(P	and	nQ	and	nR	or	P	and	Q	and	R)
==	(P	and	nQ	and	nR	or	P	and	Q	and	R)
);
