import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q_and_R)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q_and_R)
==	(nP	or	nQ	or	nR)
);
static_assert
(	not
	(P_and_R	and	Q)
==	(nP	or	nQ	or	nR)
);

static_assert
(	not
	(Q	and	P_and_R)
==	(nP	or	nQ	or	nR)
);
static_assert
(	not
	(Q_and_R	and	P)
==	(nP	or	nQ	or	nR)
);

static_assert
(	not
	(R	and	P_and_Q)
==	(nP	or	nQ	or	nR)
);
static_assert
(	not
	(R	and	Q	and	P)
==	(nP	or	nQ	or	nR)
);
