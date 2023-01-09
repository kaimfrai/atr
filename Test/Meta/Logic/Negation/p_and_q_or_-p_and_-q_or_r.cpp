import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q	or	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	!q	or	r)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(p	and	q	or	r	or	!p	and	!q)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	or	r)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(!p	and	!q	or	r	or	p	and	q)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(r	or	p	and	q	or	!p	and	!q)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(r	or	!p	and	!q	or	p	and	q)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);
