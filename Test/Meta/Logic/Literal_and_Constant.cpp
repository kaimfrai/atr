import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(T)
/// ************************************************************************************************
static_assert
(	(	P
	and	(T)
	)
==	P
);
static_assert
(	(	nP
	and	(T)
	)
==	nP
);

/// ************************************************************************************************
///	(F)
/// ************************************************************************************************
static_assert
(	(	P
	and	(F)
	)
==	(F)
);
static_assert
(	(	nP
	and	(F)
	)
==	(F)
);
