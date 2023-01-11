import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);
static_assert
(	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR	or	P_and_nQ_and_nR)
);

static_assert
(	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
==	(P_and_nQ_and_nR	or	P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	P_and_Q_and_R)
);

static_assert
(	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
==	(nP_and_Q_and_nR	or	P_and_Q_and_R	or	P_and_nQ_and_nR)
);
static_assert
(	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
==	(nP_and_Q_and_nR	or	P_and_nQ_and_nR	or	P_and_Q_and_R)
);
