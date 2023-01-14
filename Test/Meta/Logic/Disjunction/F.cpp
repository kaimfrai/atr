import Test.Meta.Logic.Data;

///	********************************************************
///	F
///	********************************************************
static_assert
(	(	T
	or	F
	)
==	T
);
static_assert
(	(	F
	or	F
	)
==	F
);

static_assert
(	(	P
	or	F
	)
==	P
);
static_assert
(	(	nP
	or	F
	)
==	nP
);

static_assert
(	(	(PQ)
	or	F
	)
==	(PQ)
);
static_assert
(	(	(PQR)
	or	F
	)
==	(PQR)
);
