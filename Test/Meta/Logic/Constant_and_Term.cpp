import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	F
	and	(P_or_Q)
	)
==	F
);

/// ************************************************************************************************
///	(P_or_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	F
	and	(P_or_Q_or_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	F
	and	(P_and_Q_or_P_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_nP_and_nQ)
///	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_and_Q_or_P_and_R_or_nP_and_nQ)
);
static_assert
(	(	F
	and	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	F
);

///	Alternative representation
static_assert
(	(	T
	and	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_and_Q_or_P_and_R_or_nP_and_nQ)
);
static_assert
(	(	F
	and	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_Q_or_P_and_R_or_Q_and_R)
);
static_assert
(	(	F
	and	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_or_nP_and_nQ)
	)
==	(P_and_Q_or_nP_and_nQ)
);
static_assert
(	(	F
	and	(P_and_Q_or_nP_and_nQ)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ_or_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(P_and_Q_or_nP_and_nQ_or_R)
);
static_assert
(	(	F
	and	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_or_nP_and_R)
	)
==	(P_and_Q_or_nP_and_R)
);
static_assert
(	(	F
	and	(P_and_Q_or_nP_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
///	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	F
);

///	Alternative representation
static_assert
(	(	T
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	F
	and	(P_and_Q_or_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
);
static_assert
(	(	F
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R_or_nP_and_nQ)
	)
==	(P_and_Q_and_R_or_nP_and_nQ)
);
static_assert
(	(	F
	and	(P_and_Q_and_R_or_nP_and_nQ)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	F
);
