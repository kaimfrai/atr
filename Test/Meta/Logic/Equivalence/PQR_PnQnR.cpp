import Test.Meta.Logic.Cache.PQR_PnQnR;
import Test.Meta.Logic.Cache.Equivalence;
import Meta.Logic.Disjunction;

///	********************************************************
///	PQR_PnQnR
///	********************************************************
static_assert
(	(PQR or PnQnR)
==	PQR_PnQnR
);
static_assert
(	(PnQnR or PQR)
==	PQR_PnQnR
);
