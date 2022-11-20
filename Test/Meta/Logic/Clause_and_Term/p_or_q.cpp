import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	or	q)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	or	q)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	or	q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	or	q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	or	q)
	)
==	(p	and	!q)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	or	q)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	or	q)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	and	(p	or	q)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	or	q)
	)
==	(p	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	or	q)
	)
==	(!p	and	q)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	or	q)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	or	q)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	and	(p	or	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	or	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	or	q)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	or	q)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	or	q)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	or	q)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	or	q)
	)
==	(q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	or	q)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	or	q)
	)
==	(p	and	!q	and	!r)
);
