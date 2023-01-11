import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q	or	nP_and_nQ)
==	(P_and_nQ	or	nP_and_Q)
);
static_assert
(	not
	(nP_and_nQ	or	P_and_Q)
==	(P_and_nQ	or	nP_and_Q)
);
