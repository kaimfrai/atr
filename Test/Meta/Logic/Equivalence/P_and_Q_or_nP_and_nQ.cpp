import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(P_and_Q_or_nP_and_nQ)
==	(P_and_Q_or_nP_and_nQ)
);
static_assert
(	(P_and_Q_or_nP_and_nQ)
==	(nP_and_nQ	or	P_and_Q)
);
