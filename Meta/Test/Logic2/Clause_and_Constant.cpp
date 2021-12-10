import Meta.Logic2.Test.Data;

/// ************************************************************************************************
///	(T)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(T)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(T)
	)
==	(p	and	q	and	r)
);

/// ************************************************************************************************
///	(F)
/// ************************************************************************************************
static_assert
(	(	(p	and	q)
	and	(F)
	)
==	(F)
);
static_assert
(	(	(p	and	q	and	r)
	and	(F)
	)
==	(F)
);
