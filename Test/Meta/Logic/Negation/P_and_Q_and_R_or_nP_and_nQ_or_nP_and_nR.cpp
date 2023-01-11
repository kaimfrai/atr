import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
==	(P_and_nQ	or	P_and_nR	or	nP_and_Q_and_R)
);
static_assert
(	not
	(P_and_Q_and_R	or	nP_and_nR	or	nP_and_nQ)
==	(P_and_nQ	or	P_and_nR	or	nP_and_Q_and_R)
);

static_assert
(	not
	(nP_and_nQ	or	P_and_Q_and_R	or	nP_and_nR)
==	(P_and_nQ	or	P_and_nR	or	nP_and_Q_and_R)
);
static_assert
(	not
	(nP_and_nQ	or	nP_and_nR	or	P_and_Q_and_R)
==	(P_and_nQ	or	P_and_nR	or	nP_and_Q_and_R)
);

static_assert
(	not
	(nP_and_nR	or	P_and_Q_and_R	or	nP_and_nQ)
==	(P_and_nQ	or	P_and_nR	or	nP_and_Q_and_R)
);
static_assert
(	not
	(nP_and_nR	or	nP_and_nQ	or	P_and_Q_and_R)
==	(P_and_nQ	or	P_and_nR	or	nP_and_Q_and_R)
);
