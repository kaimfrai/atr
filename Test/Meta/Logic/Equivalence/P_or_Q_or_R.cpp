import Meta.Logic.Test.Data;

///	********************************************************
///	(P_or_Q_or_R)
///	********************************************************
static_assert
(	(P or Q or R)
==	P_or_Q_or_R
);
static_assert
(	(P or R or Q)
==	P_or_Q_or_R
);

static_assert
(	(Q or P or R)
==	P_or_Q_or_R
);
static_assert
(	(Q or R or P)
==	P_or_Q_or_R
);

static_assert
(	(R or P or Q)
==	P_or_Q_or_R
);
static_assert
(	(R or Q or P)
==	P_or_Q_or_R
);
