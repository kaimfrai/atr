import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R)
/// ************************************************************************************************
static_assert
(	(P_and_Q	or	P_and_R)
==	(P_and_Q	or	P_and_R)
);
static_assert
(	(P_and_Q	or	P_and_R)
==	(P_and_R	or	P_and_Q)
);
