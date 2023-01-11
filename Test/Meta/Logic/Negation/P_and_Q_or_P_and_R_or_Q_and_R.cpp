import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q_or_P_and_R_or_Q_and_R)
==	(nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
static_assert
(	not
	(P_and_Q	or	Q_and_R	or	P_and_R)
==	(nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);

static_assert
(	not
	(P_and_R	or	P_and_Q	or	Q_and_R)
==	(nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
static_assert
(	not
	(P_and_R	or	Q_and_R	or	P_and_Q)
==	(nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);

static_assert
(	not
	(Q_and_R	or	P_and_Q_or_P_and_R)
==	(nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
static_assert
(	not
	(Q_and_R	or	P_and_R	or	P_and_Q)
==	(nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
