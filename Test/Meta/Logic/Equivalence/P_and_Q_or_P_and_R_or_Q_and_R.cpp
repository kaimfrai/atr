import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(P	and	Q	or	P	and	R	or	Q	and	R)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);
static_assert
(	(P	and	Q	or	P	and	R	or	Q	and	R)
==	(P	and	Q	or	Q	and	R	or	P	and	R)
);

static_assert
(	(P	and	Q	or	P	and	R	or	Q	and	R)
==	(P	and	R	or	P	and	Q	or	Q	and	R)
);
static_assert
(	(P	and	Q	or	P	and	R	or	Q	and	R)
==	(P	and	R	or	Q	and	R	or	P	and	Q)
);

static_assert
(	(P	and	Q	or	P	and	R	or	Q	and	R)
==	(Q	and	R	or	P	and	Q	or	P	and	R)
);
static_assert
(	(P	and	Q	or	P	and	R	or	Q	and	R)
==	(Q	and	R	or	P	and	R	or	P	and	Q)
);
