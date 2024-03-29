import Test.Meta.Logic.Cache.P_Q_R;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	P_Q_R
///	********************************************************
static_assert
(	(P or Q or R)
==	P_Q_R
);
static_assert
(	(P or R or Q)
==	P_Q_R
);

static_assert
(	(Q or P or R)
==	P_Q_R
);
static_assert
(	(Q or R or P)
==	P_Q_R
);

static_assert
(	(R or P or Q)
==	P_Q_R
);
static_assert
(	(R or Q or P)
==	P_Q_R
);
