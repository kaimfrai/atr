import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R)
/// ************************************************************************************************
static_assert
(	(P_and_Q	or	nP_and_R)
==	(P_and_Q	or	nP_and_R)
);
static_assert
(	(P_and_Q	or	nP_and_R)
==	(nP_and_R	or	P_and_Q)
);
