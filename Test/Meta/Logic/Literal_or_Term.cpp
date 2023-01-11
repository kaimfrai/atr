import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	nP
	or	(P	or	Q)
	)
==	T
);

static_assert
(	(	Q
	or	(P	or	Q)
	)
==	(P	or	Q)
);
static_assert
(	(	nQ
	or	(P	or	Q)
	)
==	T
);

static_assert
(	(	R
	or	(P	or	Q)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	nR
	or	(P	or	Q)
	)
==	(P	or	Q	or	nR)
);

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	nP
	or	(P	or	Q	or	R)
	)
==	T
);

static_assert
(	(	Q
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	nQ
	or	(P	or	Q	or	R)
	)
==	T
);

static_assert
(	(	R
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);
static_assert
(	(	nR
	or	(P	or	Q	or	R)
	)
==	T
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q	or	P_and_R)
	)
==	P
);
static_assert
(	(	nP
	or	(P_and_Q	or	P_and_R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P_and_Q	or	P_and_R)
	)
==	(P_and_R	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	P_and_R)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q	or	P_and_R)
	)
==	(P_and_Q	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	P_and_R)
	)
==	(P	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	nP_and_nQ)
///	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P	or	nQ)
);
static_assert
(	(	nP
	or	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(nP	or	Q	or	R)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P_and_Q	or	nP_and_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P	or	nQ	or	nR)
);

///	Alternative representation
static_assert
(	(	P
	or	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P	or	nQ)
);
static_assert
(	(	nP
	or	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(nP	or	Q	or	R)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P_and_Q	or	nP_and_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P	or	nQ	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P	or	Q_and_R)
);
static_assert
(	(	nP
	or	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_R	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_Q	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P	or	Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q	or	nP_and_nQ)
	)
==	(P	or	nQ)
);
static_assert
(	(	nP
	or	(P_and_Q	or	nP_and_nQ)
	)
==	(nP	or	Q)
);

static_assert
(	(	Q
	or	(P_and_Q	or	nP_and_nQ)
	)
==	(nP	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	nP_and_nQ)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q	or	nP_and_nQ)
	)
==	(P_and_Q	or	nP_and_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	nP_and_nQ)
	)
==	(P_and_Q	or	nP_and_nQ	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nP
	or	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP	or	Q	or	R)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q	or	nP_and_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	T
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q	or	nP_and_R)
	)
==	(P	or	R)
);
static_assert
(	(	nP
	or	(P_and_Q	or	nP_and_R)
	)
==	(nP	or	Q)
);

static_assert
(	(	Q
	or	(P_and_Q	or	nP_and_R)
	)
==	(nP_and_R	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	nP_and_R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q	or	nP_and_R)
	)
==	(P_and_Q	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	nP_and_R)
	)
==	(nP	or	Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
///	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nP
	or	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(nP	or	Q	or	nR)
);

static_assert
(	(	Q
	or	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(nP	or	Q	or	nR)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(nP	or	Q	or	nR)
);

///	Alternative representation
static_assert
(	(	P
	or	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nP
	or	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(nP	or	Q	or	nR)
);

static_assert
(	(	Q
	or	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(nP	or	Q	or	nR)
);
static_assert
(	(	nQ
	or	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(nP	or	Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q	or	R)
	)
==	(P	or	R)
);
static_assert
(	(	nP
	or	(P_and_Q	or	R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P_and_Q	or	R)
	)
==	(Q	or	R)
);
static_assert
(	(	nQ
	or	(P_and_Q	or	R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q	or	R)
	)
==	(P_and_Q	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q	or	R)
	)
==	T
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	P
);
static_assert
(	(	nP
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_R	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P	or	Q_and_nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ	or	nP_and_Q	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P	or	Q_and_nR	or	nQ_and_R)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_nR	or	nP_and_R	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_nQ	or	nP_and_Q	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_Q	or	nP_and_nQ	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P	or	Q_and_nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ	or	nP_and_Q	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P	or	Q_and_nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ	or	nP_and_Q	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P	or	nQ	or	nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP	or	Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP	or	Q	or	nR)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP	or	nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q	or	nP_and_nQ	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(P	or	nQ_and_nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(nP	or	Q_and_R)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(nP_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(P_and_R	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(nP_and_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(P_and_Q	or	nR)
);
