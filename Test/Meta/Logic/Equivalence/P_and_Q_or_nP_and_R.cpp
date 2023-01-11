import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r)
/// ************************************************************************************************
static_assert
(	(p	and	q	or	!p	and	r)
==	(p	and	q	or	!p	and	r)
);
static_assert
(	(p	and	q	or	!p	and	r)
==	(!p	and	r	or	p	and	q)
);
