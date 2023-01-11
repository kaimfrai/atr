import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	F
	and	(P	or	Q)
	)
==	F
);

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	F
	and	(P	or	Q	or	R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q	or	P_and_R)
	)
==	(P_and_Q	or	P_and_R)
);
static_assert
(	(	F
	and	(P_and_Q	or	P_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	nP_and_nQ)
///	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P_and_Q	or	P_and_R	or	nP_and_nQ)
);
static_assert
(	(	F
	and	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	F
);

///	Alternative representation
static_assert
(	(	T
	and	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P_and_Q	or	P_and_R	or	nP_and_nQ)
);
static_assert
(	(	F
	and	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_Q	or	P_and_R	or	Q_and_R)
);
static_assert
(	(	F
	and	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q	or	nP_and_nQ)
	)
==	(P_and_Q	or	nP_and_nQ)
);
static_assert
(	(	F
	and	(P_and_Q	or	nP_and_nQ)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q	or	nP_and_nQ	or	R)
);
static_assert
(	(	F
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q	or	nP_and_R)
	)
==	(P_and_Q	or	nP_and_R)
);
static_assert
(	(	F
	and	(P_and_Q	or	nP_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
///	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	F
);

///	Alternative representation
static_assert
(	(	T
	and	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q	or	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q	or	R)
	)
==	(P_and_Q	or	R)
);
static_assert
(	(	F
	and	(P_and_Q	or	R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
);
static_assert
(	(	F
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R	or	nP_and_nQ)
	)
==	(P_and_Q_and_R	or	nP_and_nQ)
);
static_assert
(	(	F
	and	(P_and_Q_and_R	or	nP_and_nQ)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	F
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
);
static_assert
(	(	F
	and	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	F
);
