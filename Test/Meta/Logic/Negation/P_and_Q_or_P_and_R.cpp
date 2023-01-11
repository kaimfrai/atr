import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q_or_P_and_R)
==	(nP_or_nQ_and_nR)
);
static_assert
(	not
	(P_and_R	or	P_and_Q)
==	(nP_or_nQ_and_nR)
);
