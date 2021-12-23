import Legacy.Test.Meta.Logic.Data;

/// ************************************************************************************************
///	(p)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(p)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p)
	)
==	(p	and	!q)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	and	(p)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p)
	)
==	(p	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p)
	)
==	(F)
);
static_assert
(	(	(!p	and	!r)
	and	(p)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p)
	)
==	(p	and	!q	and	!r)
);

/// ************************************************************************************************
///	(!p)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(!p)
	)
==	(F)
);
static_assert
(	(	(p	and	q	and	r)
	and	(!p)
	)
==	(F)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(!p)
	)
==	(F)
);

static_assert
(	(	(p	and	!q)
	and	(!p)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(!p)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(!p)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(!p)
	)
==	(F)
);
static_assert
(	(	(p	and	!r)
	and	(!p)
	)
==	(F)
);

static_assert
(	(	(!p	and	q)
	and	(!p)
	)
==	(!p	and	q)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(!p)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(!p)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	and	(!p)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(!p)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(!p)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(!p)
	)
==	(!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(!p)
	)
==	(!p	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(!p)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(!p)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(!p)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(!p)
	)
==	(!p	and	!q	and	!r)
);
