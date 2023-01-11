import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q_or_R)
/// ************************************************************************************************
static_assert
(	not
	(P_or_Q_or_R)
==	(nP_and_nQ_and_nR)
);
static_assert
(	not
	(P	or	R	or	Q)
==	(nP_and_nQ_and_nR)
);

static_assert
(	not
	(Q	or	P	or	R)
==	(nP_and_nQ_and_nR)
);
static_assert
(	not
	(Q	or	R	or	P)
==	(nP_and_nQ_and_nR)
);

static_assert
(	not
	(R	or	P_or_Q)
==	(nP_and_nQ_and_nR)
);
static_assert
(	not
	(R	or	Q	or	P)
==	(nP_and_nQ_and_nR)
);
