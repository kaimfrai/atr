import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	or	r)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	r)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	r)
	)
==	(!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	r)
	)
==	(!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);
