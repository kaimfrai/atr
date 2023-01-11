import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q_or_R)
/// ************************************************************************************************
static_assert
(	(P_or_Q_or_R)
==	(P_or_Q_or_R)
);
static_assert
(	(P_or_Q_or_R)
==	(P_or_R	or	Q)
);

static_assert
(	(P_or_Q_or_R)
==	(Q	or	P_or_R)
);
static_assert
(	(P_or_Q_or_R)
==	(Q	or	R	or	P)
);

static_assert
(	(P_or_Q_or_R)
==	(R	or	P_or_Q)
);
static_assert
(	(P_or_Q_or_R)
==	(R	or	Q	or	P)
);
