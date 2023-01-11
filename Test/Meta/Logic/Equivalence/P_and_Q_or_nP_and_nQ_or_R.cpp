import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q	or	r)
/// ************************************************************************************************
static_assert
(	(p	and	q	or	!p	and	!q	or	r)
==	(p	and	q	or	!p	and	!q	or	r)
);
static_assert
(	(p	and	q	or	!p	and	!q	or	r)
==	(p	and	q	or	r	or	!p	and	!q)
);

static_assert
(	(p	and	q	or	!p	and	!q	or	r)
==	(!p	and	!q	or	p	and	q	or	r)
);
static_assert
(	(p	and	q	or	!p	and	!q	or	r)
==	(!p	and	!q	or	r	or	p	and	q)
);

static_assert
(	(p	and	q	or	!p	and	!q	or	r)
==	(r	or	p	and	q	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	!p	and	!q	or	r)
==	(r	or	!p	and	!q	or	p	and	q)
);
