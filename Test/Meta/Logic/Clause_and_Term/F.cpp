import Meta.Logic.Test.Data;

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