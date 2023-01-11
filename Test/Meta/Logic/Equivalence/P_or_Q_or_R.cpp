import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(P	or	Q	or	R)
==	(P	or	Q	or	R)
);
static_assert
(	(P	or	Q	or	R)
==	(P	or	R	or	Q)
);

static_assert
(	(P	or	Q	or	R)
==	(Q	or	P	or	R)
);
static_assert
(	(P	or	Q	or	R)
==	(Q	or	R	or	P)
);

static_assert
(	(P	or	Q	or	R)
==	(R	or	P	or	Q)
);
static_assert
(	(P	or	Q	or	R)
==	(R	or	Q	or	P)
);
