import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	nP
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	and	nP
	)
==	(F)
);
static_assert
(	(	(P	and	Q	and	R)
	and	nP
	)
==	(F)
);
static_assert
(	(	(P	and	Q	and	nR)
	and	nP
	)
==	(F)
);

static_assert
(	(	(P	and	nQ)
	and	nP
	)
==	(F)
);
static_assert
(	(	(P	and	nQ	and	R)
	and	nP
	)
==	(F)
);
static_assert
(	(	(P	and	nQ	and	nR)
	and	nP
	)
==	(F)
);

static_assert
(	(	(P	and	R)
	and	nP
	)
==	(F)
);
static_assert
(	(	(P	and	nR)
	and	nP
	)
==	(F)
);

static_assert
(	(	(nP	and	Q)
	and	nP
	)
==	(nP	and	Q)
);
static_assert
(	(	(nP	and	Q	and	R)
	and	nP
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(nP	and	Q	and	nR)
	and	nP
	)
==	(nP	and	Q	and	nR)
);

static_assert
(	(	(nP	and	nQ)
	and	nP
	)
==	(nP	and	nQ)
);
static_assert
(	(	(nP	and	nQ	and	R)
	and	nP
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	and	nP
	)
==	(nP	and	nQ	and	nR)
);

static_assert
(	(	(nP	and	R)
	and	nP
	)
==	(nP	and	R)
);
static_assert
(	(	(nP	and	nR)
	and	nP
	)
==	(nP	and	nR)
);

static_assert
(	(	(Q	and	R)
	and	nP
	)
==	(nP	and	Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	and	nP
	)
==	(nP	and	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	and	nP
	)
==	(nP	and	nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	and	nP
	)
==	(nP	and	nQ	and	nR)
);
