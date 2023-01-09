import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r	or	!q	and	!r)
///	(p	and	!r	or	!p	and	!q	or	q	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	r	or	!q	and	!r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(p	and	q	or	!q	and	!r	or	!p	and	r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(!p	and	r	or	p	and	q	or	!q	and	!r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(!p	and	r	or	!q	and	!r	or	p	and	q)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(!q	and	!r	or	p	and	q	or	!p	and	r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(!q	and	!r	or	!p	and	r	or	p	and	q)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
