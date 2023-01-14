import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
///	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
==	(P_and_nQ_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	not
	(P_and_Q_or_nQ_and_nR	or	nP_and_R)
==	(P_and_nQ_and_R	or	nP_and_Q_and_nR)
);

static_assert
(	not
	(nP_and_R	or	P_and_Q_or_nQ_and_nR)
==	(P_and_nQ_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	not
	(nP_and_R	or	nQ_and_nR	or	P_and_Q)
==	(P_and_nQ_and_R	or	nP_and_Q_and_nR)
);

static_assert
(	not
	(nQ_and_nR	or	P_and_Q_or_nP_and_R)
==	(P_and_nQ_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	not
	(nQ_and_nR	or	nP_and_R	or	P_and_Q)
==	(P_and_nQ_and_R	or	nP_and_Q_and_nR)
);