import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ_or_R)
/// ************************************************************************************************
static_assert
(	(P_and_Q_or_nP_and_nQ_or_R)
==	(P_and_Q_or_nP_and_nQ_or_R)
);
static_assert
(	(P_and_Q_or_nP_and_nQ_or_R)
==	(P_and_Q_or_R	or	nP_and_nQ)
);

static_assert
(	(P_and_Q_or_nP_and_nQ_or_R)
==	(nP_and_nQ	or	P_and_Q_or_R)
);
static_assert
(	(P_and_Q_or_nP_and_nQ_or_R)
==	(nP_and_nQ	or	R	or	P_and_Q)
);

static_assert
(	(P_and_Q_or_nP_and_nQ_or_R)
==	(R	or	P_and_Q_or_nP_and_nQ)
);
static_assert
(	(P_and_Q_or_nP_and_nQ_or_R)
==	(R	or	nP_and_nQ	or	P_and_Q)
);
