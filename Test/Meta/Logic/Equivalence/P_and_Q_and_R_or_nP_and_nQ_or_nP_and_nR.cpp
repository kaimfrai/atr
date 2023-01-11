import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
/// ************************************************************************************************
static_assert
(	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
==	(p	and	q	and	r	or	!p	and	!r	or	!p	and	!q)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
==	(!p	and	!q	or	p	and	q	and	r	or	!p	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
==	(!p	and	!q	or	!p	and	!r	or	p	and	q	and	r)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
==	(!p	and	!r	or	p	and	q	and	r	or	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
==	(!p	and	!r	or	!p	and	!q	or	p	and	q	and	r)
);
