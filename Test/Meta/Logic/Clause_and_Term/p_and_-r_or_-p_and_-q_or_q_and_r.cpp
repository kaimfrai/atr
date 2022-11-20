import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r	or	!q	and	!r)
///	(p	and	!r	or	!p	and	!q	or	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	!q	and	!r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	q	and	!r)
);
