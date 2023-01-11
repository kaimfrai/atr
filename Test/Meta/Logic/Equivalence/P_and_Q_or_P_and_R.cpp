import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	or	P	and	R)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(P	and	Q	or	P	and	R)
==	(P	and	R	or	P	and	Q)
);
