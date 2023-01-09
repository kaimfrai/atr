import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	or	q	or	r)
/// ************************************************************************************************
static_assert
(	not
	(p	or	q	or	r)
==	(!p	and	!q	and	!r)
);
static_assert
(	not
	(p	or	r	or	q)
==	(!p	and	!q	and	!r)
);

static_assert
(	not
	(q	or	p	or	r)
==	(!p	and	!q	and	!r)
);
static_assert
(	not
	(q	or	r	or	p)
==	(!p	and	!q	and	!r)
);

static_assert
(	not
	(r	or	p	or	q)
==	(!p	and	!q	and	!r)
);
static_assert
(	not
	(r	or	q	or	p)
==	(!p	and	!q	and	!r)
);
