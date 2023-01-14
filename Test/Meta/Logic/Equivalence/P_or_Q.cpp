import Meta.Logic.Test.Data;

///	********************************************************
///	(P_or_Q)
///	********************************************************
static_assert
(	(P or Q)
==	P_or_Q
);
static_assert
(	(Q or P)
==	P_or_Q
);
