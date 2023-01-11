import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q_and_R_or_P_and_nQ_and_nR)
==	(nP	or	nQ_and_R	or	Q_and_nR)
);
static_assert
(	not
	(P_and_nQ_and_nR	or	P_and_Q_and_R)
==	(nP	or	nQ_and_R	or	Q_and_nR)
);
