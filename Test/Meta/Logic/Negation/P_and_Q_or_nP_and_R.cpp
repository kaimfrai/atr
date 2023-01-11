import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	r)
==	(p	and	!q	or	!p	and	!r)
);
static_assert
(	not
	(!p	and	r	or	p	and	q)
==	(p	and	!q	or	!p	and	!r)
);
