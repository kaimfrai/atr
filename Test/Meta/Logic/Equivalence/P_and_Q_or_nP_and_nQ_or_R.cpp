import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ	or	R)
/// ************************************************************************************************
static_assert
(	(P_and_Q	or	nP_and_nQ	or	R)
==	(P_and_Q	or	nP_and_nQ	or	R)
);
static_assert
(	(P_and_Q	or	nP_and_nQ	or	R)
==	(P_and_Q	or	R	or	nP_and_nQ)
);

static_assert
(	(P_and_Q	or	nP_and_nQ	or	R)
==	(nP_and_nQ	or	P_and_Q	or	R)
);
static_assert
(	(P_and_Q	or	nP_and_nQ	or	R)
==	(nP_and_nQ	or	R	or	P_and_Q)
);

static_assert
(	(P_and_Q	or	nP_and_nQ	or	R)
==	(R	or	P_and_Q	or	nP_and_nQ)
);
static_assert
(	(P_and_Q	or	nP_and_nQ	or	R)
==	(R	or	nP_and_nQ	or	P_and_Q)
);
