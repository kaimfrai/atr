import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r)
==	(!p	or	!q	or	!r)
);
static_assert
(	not
	(p	and	r	and	q)
==	(!p	or	!q	or	!r)
);

static_assert
(	not
	(q	and	p	and	r)
==	(!p	or	!q	or	!r)
);
static_assert
(	not
	(q	and	r	and	p)
==	(!p	or	!q	or	!r)
);

static_assert
(	not
	(r	and	p	and	q)
==	(!p	or	!q	or	!r)
);
static_assert
(	not
	(r	and	q	and	p)
==	(!p	or	!q	or	!r)
);
