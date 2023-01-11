import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P_or_Q)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_or_Q)
	)
==	P
);
static_assert
(	(	nP
	and	(P_or_Q)
	)
==	(nP_and_Q)
);

static_assert
(	(	Q
	and	(P_or_Q)
	)
==	Q
);
static_assert
(	(	nQ
	and	(P_or_Q)
	)
==	(P_and_nQ)
);

static_assert
(	(	R
	and	(P_or_Q)
	)
==	(P_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_or_Q)
	)
==	(P_and_nR	or	Q_and_nR)
);

/// ************************************************************************************************
///	(P_or_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_or_Q_or_R)
	)
==	P
);
static_assert
(	(	nP
	and	(P_or_Q_or_R)
	)
==	(nP_and_Q_or_nP_and_R)
);

static_assert
(	(	Q
	and	(P_or_Q_or_R)
	)
==	Q
);
static_assert
(	(	nQ
	and	(P_or_Q_or_R)
	)
==	(P_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P_or_Q_or_R)
	)
==	R
);
static_assert
(	(	nR
	and	(P_or_Q_or_R)
	)
==	(P_and_nR	or	Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_or_P_and_R)
	)
==	F
);

static_assert
(	(	Q
	and	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_P_and_R)
	)
==	(P_and_nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_or_P_and_R)
	)
==	(P_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_or_P_and_R)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_nP_and_nQ)
///	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(nP_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_and_R	or	nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_or_P_and_R_or_nP_and_nQ)
	)
==	(P_and_Q_and_nR	or	nP_and_nQ_and_nR)
);

///	Alternative representation
static_assert
(	(	P
	and	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(nP_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_and_R	or	nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_or_nP_and_nQ_or_nQ_and_R)
	)
==	(P_and_Q_and_nR	or	nP_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_P_and_R_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(nP_and_Q_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_or_P_and_R_or_Q_and_R)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_or_nP_and_nQ)
	)
==	(P_and_Q)
);
static_assert
(	(	nP
	and	(P_and_Q_or_nP_and_nQ)
	)
==	(nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_Q_or_nP_and_nQ)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_nP_and_nQ)
	)
==	(nP_and_nQ)
);

static_assert
(	(	R
	and	(P_and_Q_or_nP_and_nQ)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_or_nP_and_nQ)
	)
==	(P_and_Q_and_nR	or	nP_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_nQ_or_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(nP_and_nQ	or	nP_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(nP_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	R
);
static_assert
(	(	nR
	and	(P_and_Q_or_nP_and_nQ_or_R)
	)
==	(P_and_Q_and_nR	or	nP_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_or_nP_and_R)
	)
==	(P_and_Q)
);
static_assert
(	(	nP
	and	(P_and_Q_or_nP_and_R)
	)
==	(nP_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q_or_nP_and_R)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_nP_and_R)
	)
==	(nP_and_nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_or_nP_and_R)
	)
==	(nP_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_or_nP_and_R)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
///	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(P_and_Q_or_P_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(nP_and_R	or	nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(nP_and_nQ	or	nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(nP_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_or_nP_and_R_or_nQ_and_nR)
	)
==	(P_and_nR	or	nQ_and_nR)
);

///	Alternative representation
static_assert
(	(	P
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_or_P_and_nR)
);
static_assert
(	(	nP
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_R	or	nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_nQ	or	nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(nP_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_nR_or_nP_and_nQ_or_Q_and_R)
	)
==	(P_and_nR	or	nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_or_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_or_R)
	)
==	(P_and_Q_or_P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_or_R)
	)
==	(nP_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q_or_R)
	)
==	(P_and_Q_or_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_or_R)
	)
==	(nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_or_R)
	)
==	R
);
static_assert
(	(	nR
	and	(P_and_Q_or_R)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	F
);

static_assert
(	(	Q
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR)
	)
==	(P_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(nP_and_Q_and_nR	or	nP_and_nQ_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_nQ_and_nR	or	nP_and_nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR_or_nP_and_nQ_and_R)
	)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R_or_P_and_nQ_and_nR_or_nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nQ	or	nP_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nQ	or	nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(P_and_Q_and_R_or_nP_and_nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R_or_nP_and_nQ_or_nP_and_nR_or_nQ_and_nR)
	)
==	(nP_and_nR	or	nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R_or_nP_and_nQ_and_nR)
	)
==	(nP_and_nQ_and_nR)
);
