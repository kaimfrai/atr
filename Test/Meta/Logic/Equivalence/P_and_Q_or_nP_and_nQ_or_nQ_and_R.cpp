import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	nP_and_nQ)
///	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
/// ************************************************************************************************
static_assert
(	(P_and_Q	or	P_and_R	or	nP_and_nQ)
==	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
);
static_assert
(	(P_and_Q	or	P_and_R	or	nP_and_nQ)
==	(P_and_Q	or	nQ_and_R	or	nP_and_nQ)
);

static_assert
(	(P_and_Q	or	P_and_R	or	nP_and_nQ)
==	(nP_and_nQ	or	P_and_Q	or	nQ_and_R)
);
static_assert
(	(P_and_Q	or	P_and_R	or	nP_and_nQ)
==	(nP_and_nQ	or	nQ_and_R	or	P_and_Q)
);

static_assert
(	(P_and_Q	or	P_and_R	or	nP_and_nQ)
==	(nQ_and_R	or	P_and_Q	or	nP_and_nQ)
);
static_assert
(	(P_and_Q	or	P_and_R	or	nP_and_nQ)
==	(nQ_and_R	or	nP_and_nQ	or	P_and_Q)
);
