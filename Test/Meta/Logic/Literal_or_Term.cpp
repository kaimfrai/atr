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
==	(T)
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
==	(T)
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
==	(T)
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
==	(T)
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
==	(T)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	or	P	and	R)
	)
==	P
);
static_assert
(	(	nP
	or	(P	and	Q	or	P	and	R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P	and	Q	or	P	and	R)
	)
==	(P	and	R	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	P	and	R)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	or	P	and	R)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	P	and	R)
	)
==	(P	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	nP	and	nQ)
///	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	or	nQ)
);
static_assert
(	(	nP
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(nP	or	Q	or	R)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	or	nQ	or	nR)
);

///	Alternative representation
static_assert
(	(	P
	or	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	or	nQ)
);
static_assert
(	(	nP
	or	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(nP	or	Q	or	R)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	or	nQ	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	or	Q	and	R)
);
static_assert
(	(	nP
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	R	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	or	Q	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	or	nP	and	nQ)
	)
==	(P	or	nQ)
);
static_assert
(	(	nP
	or	(P	and	Q	or	nP	and	nQ)
	)
==	(nP	or	Q)
);

static_assert
(	(	Q
	or	(P	and	Q	or	nP	and	nQ)
	)
==	(nP	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	nP	and	nQ)
	)
==	(P	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nP
	or	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	or	Q	or	R)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(T)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	or	nP	and	R)
	)
==	(P	or	R)
);
static_assert
(	(	nP
	or	(P	and	Q	or	nP	and	R)
	)
==	(nP	or	Q)
);

static_assert
(	(	Q
	or	(P	and	Q	or	nP	and	R)
	)
==	(nP	and	R	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	nP	and	R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P	and	Q	or	nP	and	R)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	nP	and	R)
	)
==	(nP	or	Q	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nP
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	or	Q	or	nR)
);

static_assert
(	(	Q
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	or	Q	or	nR)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	or	Q	or	nR)
);

///	Alternative representation
static_assert
(	(	P
	or	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nP
	or	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(nP	or	Q	or	nR)
);

static_assert
(	(	Q
	or	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(nP	or	Q	or	nR)
);
static_assert
(	(	nQ
	or	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(P	or	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(nP	or	Q	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	or	R)
	)
==	(P	or	R)
);
static_assert
(	(	nP
	or	(P	and	Q	or	R)
	)
==	(nP	or	Q	or	R)
);

static_assert
(	(	Q
	or	(P	and	Q	or	R)
	)
==	(Q	or	R)
);
static_assert
(	(	nQ
	or	(P	and	Q	or	R)
	)
==	(P	or	nQ	or	R)
);

static_assert
(	(	R
	or	(P	and	Q	or	R)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	or	R)
	)
==	(T)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	P
);
static_assert
(	(	nP
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(nP	or	Q	and	R	or	nQ	and	nR)
);

static_assert
(	(	Q
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	nR	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	R	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	Q	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	or	Q	and	nR)
);
static_assert
(	(	nP
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(nP	or	Q	and	R	or	nQ	and	nR)
);

static_assert
(	(	Q
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nR	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	R	or	nP	and	nR	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	or	nP	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	or	Q	and	nR	or	nQ	and	R)
);
static_assert
(	(	nP
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(nP	or	Q	and	R	or	nQ	and	nR)
);

static_assert
(	(	Q
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	nR	or	nP	and	R	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	R	or	nP	and	nR	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	nQ	or	nP	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	Q	or	nP	and	nQ	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	or	Q	and	nR)
);
static_assert
(	(	nP
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(nP	or	Q	and	R	or	nQ	and	nR)
);

static_assert
(	(	Q
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nR	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	R	or	nP	and	nR	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	or	nP	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	or	Q	and	nR)
);
static_assert
(	(	nP
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(nP	or	Q	and	R	or	nQ	and	nR)
);

static_assert
(	(	Q
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nR	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	R	or	nP	and	nR	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	or	nP	and	Q	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(P	or	nQ	or	nR)
);
static_assert
(	(	nP
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(nP	or	Q	and	R	or	nQ	and	nR)
);

static_assert
(	(	Q
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(nP	or	Q	or	nR)
);
static_assert
(	(	nQ
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(P	and	R	or	nP	and	nR	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(nP	or	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	nQ	or	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	or	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(P	or	nQ	and	nR)
);
static_assert
(	(	nP
	or	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(nP	or	Q	and	R)
);

static_assert
(	(	Q
	or	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(nP	and	nR	or	Q)
);
static_assert
(	(	nQ
	or	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(P	and	R	or	nQ)
);

static_assert
(	(	R
	or	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(nP	and	nQ	or	R)
);
static_assert
(	(	nR
	or	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(P	and	Q	or	nR)
);
