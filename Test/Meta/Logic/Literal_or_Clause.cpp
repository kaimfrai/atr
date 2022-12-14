import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q)
	)
==	(p)
);
static_assert
(	(	(!p)
	or	(p	and	q)
	)
==	(!p	or	q)
);

static_assert
(	(	(q)
	or	(p	and	q)
	)
==	(q)
);
static_assert
(	(	(!q)
	or	(p	and	q)
	)
==	(p	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q)
	)
==	(p	and	q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	and	r)
	)
==	(p)
);
static_assert
(	(	(!p)
	or	(p	and	q	and	r)
	)
==	(!p	or	q	and	r)
);

static_assert
(	(	(q)
	or	(p	and	q	and	r)
	)
==	(q)
);
static_assert
(	(	(!q)
	or	(p	and	q	and	r)
	)
==	(p	and	r	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	and	r)
	)
==	(r)
);
static_assert
(	(	(!r)
	or	(p	and	q	and	r)
	)
==	(p	and	q	or	!r)
);
