import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(	(p	and	q	and	r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(	(p	and	q	and	!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	or	!p	and	!q	or	!p	and	!r)
);

static_assert
(	(	(p	and	!q)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	r	or	!p	and	!r	or	!q)
);
static_assert
(	(	(p	and	!q	and	r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(	(p	and	!q	and	!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!q	and	!r	or	!p	and	!r)
);

static_assert
(	(	(p	and	r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(	(p	and	!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	or	!p	and	!q	or	!r)
);

static_assert
(	(	(!p	and	q)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	or	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	or	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);

static_assert
(	(	(!p	and	!q)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(	(!p	and	!q	and	r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);

static_assert
(	(	(!p	and	r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	or	q	and	r)
);
static_assert
(	(	(!p	and	!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);

static_assert
(	(	(q	and	r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	or	q	and	r)
);
static_assert
(	(	(q	and	!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	or	!p	and	!q	or	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(	(!q	and	!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);
