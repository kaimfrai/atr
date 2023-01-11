import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q)
==	(nP	or	nQ)
);
static_assert
(	not
	(Q	and	P)
==	(nP	or	nQ)
);
