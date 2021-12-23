import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q)
	)
==	(F)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	and	r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	and	r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	and	r)
	)
==	(F)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	and	r)
	)
==	(F)
);
