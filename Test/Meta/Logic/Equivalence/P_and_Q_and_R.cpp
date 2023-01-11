import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R)
/// ************************************************************************************************
static_assert
(	(P_and_Q_and_R)
==	(P_and_Q_and_R)
);
static_assert
(	(P_and_Q_and_R)
==	(P_and_R	and	Q)
);

static_assert
(	(P_and_Q_and_R)
==	(Q	and	P_and_R)
);
static_assert
(	(P_and_Q_and_R)
==	(Q_and_R	and	P)
);

static_assert
(	(P_and_Q_and_R)
==	(R	and	P_and_Q)
);
static_assert
(	(P_and_Q_and_R)
==	(R	and	Q	and	P)
);
