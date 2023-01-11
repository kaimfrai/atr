import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P	or	Q)
	)
==	T
);
static_assert
(	(	F
	or	(P	or	Q)
	)
==	(P	or	Q)
);

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P	or	Q	or	R)
	)
==	T
);
static_assert
(	(	F
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q	or	P_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	P_and_R)
	)
==	(P_and_Q	or	P_and_R)
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	nP_and_nQ)
///	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P_and_Q	or	P_and_R	or	nP_and_nQ)
);

///	Alternative representation
static_assert
(	(	T
	or	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P_and_Q	or	P_and_R	or	nP_and_nQ)
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_Q	or	P_and_R	or	Q_and_R)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q	or	nP_and_nQ)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	nP_and_nQ)
	)
==	(P_and_Q	or	nP_and_nQ)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q	or	nP_and_nQ	or	R)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q	or	nP_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	nP_and_R)
	)
==	(P_and_Q	or	nP_and_R)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
///	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
);

///	Alternative representation
static_assert
(	(	T
	or	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q	or	R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q	or	R)
	)
==	(P_and_Q	or	R)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R	or	nP_and_nQ)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R	or	nP_and_nQ)
	)
==	(P_and_Q_and_R	or	nP_and_nQ)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	or	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	T
);
static_assert
(	(	F
	or	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
);
