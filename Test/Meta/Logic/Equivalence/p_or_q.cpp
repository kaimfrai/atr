import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	or	q)
/// ************************************************************************************************
static_assert
(	(p	or	q)
==	(p	or	q)
);
static_assert
(	(p	or	q)
==	(q	or	p)
);
