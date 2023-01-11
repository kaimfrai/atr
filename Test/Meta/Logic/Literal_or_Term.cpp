import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	nP
	or	(P_or_Q)
	)
==	T
);

static_assert
(	(	Q
	or	(P_or_Q)
	)
==	(P_or_Q)
);
static_assert
(	(	nQ
	or	(P_or_Q)
	)
==	T
);

static_assert
(	(	R
	or	(P_or_Q)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	nR
	or	(P_or_Q)
	)
==	(P_or_Q	or	nR)
);

/// ************************************************************************************************
///	(P_or_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	nP
	or	(P_or_Q_or_R)
	)
==	T
);

static_assert
(	(	Q
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	nQ
	or	(P_or_Q_or_R)
	)
==	T
);

static_assert
(	(	R
	or	(P_or_Q_or_R)
	)
==	(P_or_Q_or_R)
);
static_assert
(	(	nR
	or	(P_or_Q_or_R)
	)
==	T
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_or_P_and_R)
	)
==	P
);
static_assert
(	(	nP
	or	(P_and_Q_or_P_and_R)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	Q
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_R	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_P_and_R)
	)
==	(P_or_nQ)
);

static_assert
(	(	R
	or	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_P_and_R)
	)
==	(P_or_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_nP_and_nQ)
///	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_or_nQ)
);
static_assert
(	(	nP
	or	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	Q
	or	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(nP_or_Q_or_R)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_or_nQ)
);

static_assert
(	(	R
	or	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_and_Q_or_nP_and_nQ_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_or_nQ	or	nR)
);

///	Alternative representation
static_assert
(	(	P
	or	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_or_nQ)
);
static_assert
(	(	nP
	or	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	Q
	or	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(nP_or_Q_or_R)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_or_nQ)
);

static_assert
(	(	R
	or	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_and_Q_or_nP_and_nQ_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_or_nQ	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_or_Q_and_R)
);
static_assert
(	(	nP
	or	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	Q
	or	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_R	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_or_Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_or_nP_and_nQ)
	)
==	(P_or_nQ)
);
static_assert
(	(	nP
	or	(P_and_Q_or_nP_and_nQ)
	)
==	(nP_or_Q)
);

static_assert
(	(	Q
	or	(P_and_Q_or_nP_and_nQ)
	)
==	(nP_or_Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_nP_and_nQ)
	)
==	(P_or_nQ)
);

static_assert
(	(	R
	or	(P_and_Q_or_nP_and_nQ)
	)
==	(P_and_Q_or_nP_and_nQ_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_nP_and_nQ)
	)
==	(P_and_Q_or_nP_and_nQ	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ_or_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nP
	or	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	Q
	or	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(nP_or_Q_or_R)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(P_and_Q_or_nP_and_nQ_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	T
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_or_nP_and_R)
	)
==	(P_or_R)
);
static_assert
(	(	nP
	or	(P_and_Q_or_nP_and_R)
	)
==	(nP_or_Q)
);

static_assert
(	(	Q
	or	(P_and_Q_or_nP_and_R)
	)
==	(nP_and_R	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_nP_and_R)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q_or_nP_and_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_nP_and_R)
	)
==	(nP_or_Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
///	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nP
	or	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	Q
	or	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(nP_or_Q	or	nR)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(nP_or_Q	or	nR)
);

///	Alternative representation
static_assert
(	(	P
	or	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nP
	or	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_or_Q	or	nR)
);

static_assert
(	(	Q
	or	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_or_Q	or	nR)
);
static_assert
(	(	nQ
	or	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_or_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_or_Q	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_or_R)
	)
==	(P_or_R)
);
static_assert
(	(	nP
	or	(P_and_Q_or_R)
	)
==	(nP_or_Q_or_R)
);

static_assert
(	(	Q
	or	(P_and_Q_or_R)
	)
==	(Q	or	R)
);
static_assert
(	(	nQ
	or	(P_and_Q_or_R)
	)
==	(P_or_nQ	or	R)
);

static_assert
(	(	R
	or	(P_and_Q_or_R)
	)
==	(P_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_or_R)
	)
==	T
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	P
);
static_assert
(	(	nP
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(nP_or_Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_R	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_Q_or_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_or_Q_and_nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(nP_or_Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ	or	nP_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_or_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_or_Q_and_nR	or	nQ_and_R)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(nP_or_Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_nR	or	nP_and_R	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_nQ	or	nP_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_Q_or_nP_and_nQ	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_or_Q_and_nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(nP_or_Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ	or	nP_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_or_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_or_Q_and_nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(nP_or_Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ	or	nP_and_Q_or_R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_or_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_or_nQ	or	nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_or_Q_and_R	or	nQ_and_nR)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_or_Q	or	nR)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_R	or	nP_and_nR	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_or_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_or_nP_and_nQ	or	nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(P_or_nQ_and_nR)
);
static_assert
(	(	nP
	or	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(nP_or_Q_and_R)
);

static_assert
(	(	Q
	or	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(nP_and_nR	or	Q)
);
static_assert
(	(	nQ
	or	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(P_and_R	or	nQ)
);

static_assert
(	(	R
	or	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(nP_and_nQ	or	R)
);
static_assert
(	(	nR
	or	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(P_and_Q_or_nR)
);
