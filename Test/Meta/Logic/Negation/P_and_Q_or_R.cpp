import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_R)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q_or_R)
==	(nP_and_nR	or	nQ_and_nR)
);
static_assert
(	not
	(R	or	P_and_Q)
==	(nP_and_nR	or	nQ_and_nR)
);
