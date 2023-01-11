import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	and	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	and	R)
==	(P	and	Q	and	R)
);
static_assert
(	(P	and	Q	and	R)
==	(P	and	R	and	Q)
);

static_assert
(	(P	and	Q	and	R)
==	(Q	and	P	and	R)
);
static_assert
(	(P	and	Q	and	R)
==	(Q	and	R	and	P)
);

static_assert
(	(P	and	Q	and	R)
==	(R	and	P	and	Q)
);
static_assert
(	(P	and	Q	and	R)
==	(R	and	Q	and	P)
);
