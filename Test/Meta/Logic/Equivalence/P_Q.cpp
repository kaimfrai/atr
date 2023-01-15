import Test.Meta.Logic.Cache.P_Q;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.ErasedTerm.Disjunction;

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
