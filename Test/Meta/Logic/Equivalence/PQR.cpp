import Test.Meta.Logic.Cache.PQR;

///	********************************************************
///	PQR
///	********************************************************
static_assert
(	(P and Q and R)
==	PQR
);
static_assert
(	(P and R and Q)
==	PQR
);

static_assert
(	(Q and P and R)
==	PQR
);
static_assert
(	(Q and R and P)
==	PQR
);

static_assert
(	(R and P and Q)
==	PQR
);
static_assert
(	(R and Q and P)
==	PQR
);
