import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	P
/// ************************************************************************************************
static_assert
(	(	(P	and	Q)
	and	P
	)
==	(P	and	Q)
);
static_assert
(	(	(P	and	Q	and	R)
	and	P
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	(P	and	Q	and	nR)
	and	P
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(P	and	nQ)
	and	P
	)
==	(P	and	nQ)
);
static_assert
(	(	(P	and	nQ	and	R)
	and	P
	)
==	(P	and	nQ	and	R)
);
static_assert
(	(	(P	and	nQ	and	nR)
	and	P
	)
==	(P	and	nQ	and	nR)
);

static_assert
(	(	(P	and	R)
	and	P
	)
==	(P	and	R)
);
static_assert
(	(	(P	and	nR)
	and	P
	)
==	(P	and	nR)
);

static_assert
(	(	(nP	and	Q)
	and	P
	)
==	(F)
);
static_assert
(	(	(nP	and	Q	and	R)
	and	P
	)
==	(F)
);
static_assert
(	(	(nP	and	Q	and	nR)
	and	P
	)
==	(F)
);

static_assert
(	(	(nP	and	nQ)
	and	P
	)
==	(F)
);
static_assert
(	(	(nP	and	nQ	and	R)
	and	P
	)
==	(F)
);
static_assert
(	(	(nP	and	nQ	and	nR)
	and	P
	)
==	(F)
);

static_assert
(	(	(nP	and	R)
	and	P
	)
==	(F)
);
static_assert
(	(	(nP	and	nR)
	and	P
	)
==	(F)
);

static_assert
(	(	(Q	and	R)
	and	P
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	(Q	and	nR)
	and	P
	)
==	(P	and	Q	and	nR)
);

static_assert
(	(	(nQ	and	R)
	and	P
	)
==	(P	and	nQ	and	R)
);
static_assert
(	(	(nQ	and	nR)
	and	P
	)
==	(P	and	nQ	and	nR)
);
