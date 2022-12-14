import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(T)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(T)
	)
==	(T)
);
static_assert
(	(	(!p)
	or	(T)
	)
==	(T)
);

/// ************************************************************************************************
///	(F)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(F)
	)
==	(p)
);
static_assert
(	(	(!p)
	or	(F)
	)
==	(!p)
);
