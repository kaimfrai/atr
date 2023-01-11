import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ	or	R)
/// ************************************************************************************************
static_assert
(	not
	(P_and_Q	or	nP_and_nQ	or	R)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);
static_assert
(	not
	(P_and_Q	or	R	or	nP_and_nQ)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

static_assert
(	not
	(nP_and_nQ	or	P_and_Q	or	R)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);
static_assert
(	not
	(nP_and_nQ	or	R	or	P_and_Q)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

static_assert
(	not
	(R	or	P_and_Q	or	nP_and_nQ)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);
static_assert
(	not
	(R	or	nP_and_nQ	or	P_and_Q)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);
