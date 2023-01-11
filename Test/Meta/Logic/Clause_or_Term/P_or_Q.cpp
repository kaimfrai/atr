import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	or	q)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(p	and	q	and	r)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(p	and	q	and	!r)
	or	(p	or	q)
	)
==	(p	or	q)
);

static_assert
(	(	(p	and	!q)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(p	and	!q	and	r)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(p	and	!q	and	!r)
	or	(p	or	q)
	)
==	(p	or	q)
);

static_assert
(	(	(p	and	r)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(p	and	!r)
	or	(p	or	q)
	)
==	(p	or	q)
);

static_assert
(	(	(!p	and	q)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(!p	and	q	and	!r)
	or	(p	or	q)
	)
==	(p	or	q)
);

static_assert
(	(	(!p	and	!q)
	or	(p	or	q)
	)
==	(T)
);
static_assert
(	(	(!p	and	!q	and	r)
	or	(p	or	q)
	)
==	(p	or	q	or	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	or	(p	or	q)
	)
==	(p	or	q	or	!r)
);

static_assert
(	(	(!p	and	r)
	or	(p	or	q)
	)
==	(p	or	q	or	r)
);
static_assert
(	(	(!p	and	!r)
	or	(p	or	q)
	)
==	(p	or	q	or	!r)
);

static_assert
(	(	(q	and	r)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(q	and	!r)
	or	(p	or	q)
	)
==	(p	or	q)
);

static_assert
(	(	(!q	and	r)
	or	(p	or	q)
	)
==	(p	or	q	or	r)
);
static_assert
(	(	(!q	and	!r)
	or	(p	or	q)
	)
==	(p	or	q	or	!r)
);
