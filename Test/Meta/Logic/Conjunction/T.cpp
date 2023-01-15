import Test.Meta.Logic.Data;

///	********************************************************
///	T
///	********************************************************
static_assert
(	(	T
	and	T
	)
==	T
);
static_assert
(	(	F
	and	T
	)
==	F
);

static_assert
(	(	P
	and	T
	)
==	P
);
static_assert
(	(	nP
	and	T
	)
==	nP
);

static_assert
(	(	PQ
	and	T
	)
==	PQ
);
static_assert
(	(	PQR
	and	T
	)
==	PQR
);
