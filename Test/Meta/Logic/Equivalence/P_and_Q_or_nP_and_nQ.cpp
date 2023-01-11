import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	(p	and	q	or	!p	and	!q)
==	(p	and	q	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	!p	and	!q)
==	(!p	and	!q	or	p	and	q)
);
