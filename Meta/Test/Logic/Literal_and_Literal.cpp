import Meta.Logic2.Test.Data;

/// ************************************************************************************************
///	(p)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p)
	)
==	(p)
);
static_assert
(	(	(!p)
	and	(p)
	)
==	(F)
);

static_assert
(	(	(q)
	and	(p)
	)
==	(p	and	q)
);

static_assert
(	(	(!q)
	and	(p)
	)
==	(p	and	!q)
);

/// ************************************************************************************************
///	(!p)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(!p)
	)
==	(F)
);
static_assert
(	(	(!p)
	and	(!p)
	)
==	(!p)
);

static_assert
(	(	(q)
	and	(!p)
	)
==	(!p	and	q)
);
static_assert
(	(	(!q)
	and	(!p)
	)
==	(!p	and	!q)
);
