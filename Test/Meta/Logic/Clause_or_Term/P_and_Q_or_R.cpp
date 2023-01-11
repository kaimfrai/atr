import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	r)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(p	and	q	and	r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(p	and	q	and	!r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);

static_assert
(	(	(p	and	!q)
	or	(p	and	q	or	r)
	)
==	(p	or	r)
);
static_assert
(	(	(p	and	!q	and	r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	or	(p	and	q	or	r)
	)
==	(p	or	r)
);

static_assert
(	(	(p	and	r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(p	and	!r)
	or	(p	and	q	or	r)
	)
==	(p	or	r)
);

static_assert
(	(	(!p	and	q)
	or	(p	and	q	or	r)
	)
==	(q	or	r)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	or	(p	and	q	or	r)
	)
==	(q	or	r)
);

static_assert
(	(	(!p	and	!q)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	!p	and	!q	or	r)
);
static_assert
(	(	(!p	and	!q	and	r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	!p	and	!q	or	r)
);

static_assert
(	(	(!p	and	r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!p	and	!r)
	or	(p	and	q	or	r)
	)
==	(!p	or	q	or	r)
);

static_assert
(	(	(q	and	r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(q	and	!r)
	or	(p	and	q	or	r)
	)
==	(q	or	r)
);

static_assert
(	(	(!q	and	r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!q	and	!r)
	or	(p	and	q	or	r)
	)
==	(p	or	!q	or	r)
);
