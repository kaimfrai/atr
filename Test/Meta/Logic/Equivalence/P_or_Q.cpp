import Test.Meta.Logic.Cache.P_Q;

///	********************************************************
///	P_Q
///	********************************************************
static_assert
(	(P or Q)
==	P_Q
);
static_assert
(	(Q or P)
==	P_Q
);
