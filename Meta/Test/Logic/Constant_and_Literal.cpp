import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p)
	)
==	(p)
);
static_assert
(	(	(F)
	and	(p)
	)
==	(F)
);

/// ************************************************************************************************
///	(!p)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(!p)
	)
==	(!p)
);
static_assert
(	(	(F)
	and	(!p)
	)
==	(F)
);
