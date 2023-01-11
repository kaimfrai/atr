import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q	or	nP_and_R)
==	(P_and_nQ	or	nP_and_nR)
);
static_assert
(	not
	(nP_and_R	or	P_and_Q)
==	(P_and_nQ	or	nP_and_nR)
);
