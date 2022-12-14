import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p)
	)
==	(p)
);
static_assert
(	(	(!p)
	or	(p)
	)
==	(T)
);

static_assert
(	(	(q)
	or	(p)
	)
==	(p	or	q)
);
static_assert
(	(	(!q)
	or	(p)
	)
==	(p	or	!q)
);

/// ************************************************************************************************
///	(!p)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(!p)
	)
==	(T)
);
static_assert
(	(	(!p)
	or	(!p)
	)
==	(!p)
);

static_assert
(	(	(q)
	or	(!p)
	)
==	(!p	or	q)
);
static_assert
(	(	(!q)
	or	(!p)
	)
==	(!p	or	!q)
);
