import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	or	Q)
	)
==	P
);
static_assert
(	(	nP
	and	(P	or	Q)
	)
==	(nP_and_Q)
);

static_assert
(	(	Q
	and	(P	or	Q)
	)
==	Q
);
static_assert
(	(	nQ
	and	(P	or	Q)
	)
==	(P_and_nQ)
);

static_assert
(	(	R
	and	(P	or	Q)
	)
==	(P_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P	or	Q)
	)
==	(P_and_nR	or	Q_and_nR)
);

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	or	Q	or	R)
	)
==	P
);
static_assert
(	(	nP
	and	(P	or	Q	or	R)
	)
==	(nP_and_Q	or	nP_and_R)
);

static_assert
(	(	Q
	and	(P	or	Q	or	R)
	)
==	Q
);
static_assert
(	(	nQ
	and	(P	or	Q	or	R)
	)
==	(P_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P	or	Q	or	R)
	)
==	R
);
static_assert
(	(	nR
	and	(P	or	Q	or	R)
	)
==	(P_and_nR	or	Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q	or	P_and_R)
	)
==	(P_and_Q	or	P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q	or	P_and_R)
	)
==	F
);

static_assert
(	(	Q
	and	(P_and_Q	or	P_and_R)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	P_and_R)
	)
==	(P_and_nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q	or	P_and_R)
	)
==	(P_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q	or	P_and_R)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	nP_and_nQ)
///	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P_and_Q	or	P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(nP_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P_and_R	or	nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q	or	P_and_R	or	nP_and_nQ)
	)
==	(P_and_Q_and_nR	or	nP_and_nQ_and_nR)
);

///	Alternative representation
static_assert
(	(	P
	and	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P_and_Q	or	P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(nP_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P_and_R	or	nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q	or	nP_and_nQ	or	nQ_and_R)
	)
==	(P_and_Q_and_nR	or	nP_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	P_and_R	or	Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_Q	or	P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(nP_and_Q_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_Q	or	Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q	or	P_and_R	or	Q_and_R)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q	or	nP_and_nQ)
	)
==	(P_and_Q)
);
static_assert
(	(	nP
	and	(P_and_Q	or	nP_and_nQ)
	)
==	(nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_Q	or	nP_and_nQ)
	)
==	(P_and_Q)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	nP_and_nQ)
	)
==	(nP_and_nQ)
);

static_assert
(	(	R
	and	(P_and_Q	or	nP_and_nQ)
	)
==	(P_and_Q_and_R	or	nP_and_nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q	or	nP_and_nQ)
	)
==	(P_and_Q_and_nR	or	nP_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q	or	P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_nQ	or	nP_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q	or	Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(nP_and_nQ	or	nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	R
);
static_assert
(	(	nR
	and	(P_and_Q	or	nP_and_nQ	or	R)
	)
==	(P_and_Q_and_nR	or	nP_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q	or	nP_and_R)
	)
==	(P_and_Q)
);
static_assert
(	(	nP
	and	(P_and_Q	or	nP_and_R)
	)
==	(nP_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q	or	nP_and_R)
	)
==	(P_and_Q	or	Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	nP_and_R)
	)
==	(nP_and_nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q	or	nP_and_R)
	)
==	(nP_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q	or	nP_and_R)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
///	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(P_and_Q	or	P_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(nP_and_R	or	nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(P_and_Q	or	Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(nP_and_nQ	or	nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(nP_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q	or	nP_and_R	or	nQ_and_nR)
	)
==	(P_and_nR	or	nQ_and_nR)
);

///	Alternative representation
static_assert
(	(	P
	and	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(P_and_Q	or	P_and_nR)
);
static_assert
(	(	nP
	and	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(nP_and_R	or	nP_and_nQ)
);

static_assert
(	(	Q
	and	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(P_and_Q	or	Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(nP_and_nQ	or	nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(nP_and_R	or	Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_nR	or	nP_and_nQ	or	Q_and_R)
	)
==	(P_and_nR	or	nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q	or	R)
	)
==	(P_and_Q	or	P_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q	or	R)
	)
==	(nP_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q	or	R)
	)
==	(P_and_Q	or	Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q	or	R)
	)
==	(nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q	or	R)
	)
==	R
);
static_assert
(	(	nR
	and	(P_and_Q	or	R)
	)
==	(P_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	F
);

static_assert
(	(	Q
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR)
	)
==	(P_and_nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(nP_and_Q_and_nR	or	nP_and_nQ_and_R)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_nQ_and_nR	or	nP_and_nQ_and_R)
);

static_assert
(	(	R
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_Q_and_R	or	nP_and_nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR	or	nP_and_nQ_and_R)
	)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(nP_and_Q_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R	or	P_and_nQ_and_nR	or	nP_and_Q_and_nR)
	)
==	(P_and_nQ_and_nR	or	nP_and_Q_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	P_and_nQ_and_nR)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP_and_nQ	or	nP_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_Q_and_nR)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP_and_nQ	or	nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(P_and_Q_and_R	or	nP_and_nQ_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R	or	nP_and_nQ	or	nP_and_nR	or	nQ_and_nR)
	)
==	(nP_and_nR	or	nQ_and_nR)
);

/// ************************************************************************************************
///	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nP
	and	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	Q
	and	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nQ
	and	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(nP_and_nQ_and_nR)
);

static_assert
(	(	R
	and	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(P_and_Q_and_R)
);
static_assert
(	(	nR
	and	(P_and_Q_and_R	or	nP_and_nQ_and_nR)
	)
==	(nP_and_nQ_and_nR)
);
