import Meta.Logic2.Test.Data;

/// ************************************************************************************************
///	(p)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	or	(p)
	)
==	(p)
);
static_assert
(	(	(p	and	q	and	r)
	or	(p)
	)
==	(p)
);
static_assert
(	(	(p	and	q	and	!r)
	or	(p)
	)
==	(p)
);

static_assert
(	(	(p	and	!q)
	or	(p)
	)
==	(p)
);
static_assert
(	(	(p	and	!q	and	r)
	or	(p)
	)
==	(p)
);
static_assert
(	(	(p	and	!q	and	!r)
	or	(p)
	)
==	(p)
);

static_assert
(	(	(p	and	r)
	or	(p)
	)
==	(p)
);
static_assert
(	(	(p	and	!r)
	or	(p)
	)
==	(p)
);

static_assert
(	(	(!p	and	q)
	or	(p)
	)
==	(p	or	q)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(p)
	)
==	(p	or	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	or	(p)
	)
==	(p	or	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	or	(p)
	)
==	(p	or	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	or	(p)
	)
==	(p	or	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	or	(p)
	)
==	(p	or	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	or	(p)
	)
==	(p	or	r)
);
static_assert
(	(	(!p	and	!r)
	or	(p)
	)
==	(p	or	!r)
);

static_assert
(	(	(q	and	r)
	or	(p)
	)
==	(p	or	q	and	r)
);
static_assert
(	(	(q	and	!r)
	or	(p)
	)
==	(p	or	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	or	(p)
	)
==	(p	or	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	or	(p)
	)
==	(p	or	!q	and	!r)
);

/// ************************************************************************************************
///	(!p)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	or	(!p)
	)
==	(!p	or	q)
);
static_assert
(	(	(p	and	q	and	r)
	or	(!p)
	)
==	(!p	or	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	or	(!p)
	)
==	(!p	or	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	or	(!p)
	)
==	(!p	or	!q)
);
static_assert
(	(	(p	and	!q	and	r)
	or	(!p)
	)
==	(!p	or	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	or	(!p)
	)
==	(!p	or	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	or	(!p)
	)
==	(!p	or	r)
);
static_assert
(	(	(p	and	!r)
	or	(!p)
	)
==	(!p	or	!r)
);

static_assert
(	(	(!p	and	q)
	or	(!p)
	)
==	(!p)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(!p)
	)
==	(!p)
);
static_assert
(	(	(!p	and	q	and	!r)
	or	(!p)
	)
==	(!p)
);

static_assert
(	(	(!p	and	!q)
	or	(!p)
	)
==	(!p)
);
static_assert
(	(	(!p	and	!q	and	r)
	or	(!p)
	)
==	(!p)
);
static_assert
(	(	(!p	and	!q	and	!r)
	or	(!p)
	)
==	(!p)
);

static_assert
(	(	(!p	and	r)
	or	(!p)
	)
==	(!p)
);
static_assert
(	(	(!p	and	!r)
	or	(!p)
	)
==	(!p)
);

static_assert
(	(	(q	and	r)
	or	(!p)
	)
==	(!p	or	q	and	r)
);
static_assert
(	(	(q	and	!r)
	or	(!p)
	)
==	(!p	or	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	or	(!p)
	)
==	(!p	or	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	or	(!p)
	)
==	(!p	or	!q	and	!r)
);
