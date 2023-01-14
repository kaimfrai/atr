import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R)
/// ************************************************************************************************
static_assert
(	(P and Q and R)
==	P_and_Q_and_R
);
static_assert
(	(P and R and Q)
==	P_and_Q_and_R
);

static_assert
(	(Q and P and R)
==	P_and_Q_and_R
);
static_assert
(	(Q and R and P)
==	P_and_Q_and_R
);

static_assert
(	(R and P and Q)
==	P_and_Q_and_R
);
static_assert
(	(R and Q and P)
==	P_and_Q_and_R
);
