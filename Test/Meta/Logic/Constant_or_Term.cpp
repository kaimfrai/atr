import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_or_Q)
	)
==	T
);
static_assert
(	(	F
	or	(P_or_Q)
	)
==	(P_or_Q)
);

/// ************************************************************************************************
///	(P_or_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_or_Q_or_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_P_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R)
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_nP_and_nQ)
///	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_and_Q_or_P_and_R_or_nP_and_nQ)
);

///	Alternative representation
static_assert
(	(	T
	or	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_and_Q_or_P_and_R_or_nP_and_nQ)
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_Q_or_P_and_R_or_Q_and_R)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_nP_and_nQ)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_nP_and_nQ)
	)
==	(P_and_Q_or_nP_and_nQ)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ_or_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(P_and_Q_or_nP_and_nQ_or_R)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_nP_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_nP_and_R)
	)
==	(P_and_Q_or_nP_and_R)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
///	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
);

///	Alternative representation
static_assert
(	(	T
	or	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_or_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R_or_nP_and_nQ)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R_or_nP_and_nQ)
	)
==	(P_and_Q_and_R_or_nP_and_nQ)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
);
