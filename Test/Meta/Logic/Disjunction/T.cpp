import Meta.Logic.Test.Data;

///	********************************************************
///	T
///	********************************************************
static_assert
(	(	T
	or	T
	)
==	T
);
static_assert
(	(	F
	or	T
	)
==	T
);

static_assert
(	(	P
	or	T
	)
==	T
);
static_assert
(	(	nP
	or	T
	)
==	T
);

static_assert
(	(	(PQ)
	or	T
	)
==	T
);
static_assert
(	(	(PQR)
	or	T
	)
==	T
);
