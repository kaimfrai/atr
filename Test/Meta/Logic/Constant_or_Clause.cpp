import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q)
	)
==	(P	and	Q)
);
static_assert
(	(	F
	and	(P	and	Q)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	and	R)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	F
	and	(P	and	Q	and	R)
	)
==	F
);
