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
==	(nP	and	Q)
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
==	(P	and	nQ)
);

static_assert
(	(	R
	and	(P	or	Q)
	)
==	(P	and	R	or	Q	and	R)
);
static_assert
(	(	nR
	and	(P	or	Q)
	)
==	(P	and	nR	or	Q	and	nR)
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
==	(nP	and	Q	or	nP	and	R)
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
==	(P	and	nQ	or	nQ	and	R)
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
==	(P	and	nR	or	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	or	P	and	R)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	nP
	and	(P	and	Q	or	P	and	R)
	)
==	(F)
);

static_assert
(	(	Q
	and	(P	and	Q	or	P	and	R)
	)
==	(P	and	Q)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	P	and	R)
	)
==	(P	and	nQ	and	R)
);

static_assert
(	(	R
	and	(P	and	Q	or	P	and	R)
	)
==	(P	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	or	P	and	R)
	)
==	(P	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	nP	and	nQ)
///	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	nP
	and	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(nP	and	nQ)
);

static_assert
(	(	Q
	and	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(nP	and	nQ	or	nQ	and	R)
);

static_assert
(	(	R
	and	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	R	or	nQ	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	and	nR	or	nP	and	nQ	and	nR)
);

///	Alternative representation
static_assert
(	(	P
	and	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	nP
	and	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(nP	and	nQ)
);

static_assert
(	(	Q
	and	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	and	Q)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(nP	and	nQ	or	nQ	and	R)
);

static_assert
(	(	R
	and	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	and	R	or	nQ	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	and	Q	and	nR	or	nP	and	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	nP
	and	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(nP	and	Q	and	R)
);

static_assert
(	(	Q
	and	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	nQ	and	R)
);

static_assert
(	(	R
	and	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	R	or	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	or	nP	and	nQ)
	)
==	(P	and	Q)
);
static_assert
(	(	nP
	and	(P	and	Q	or	nP	and	nQ)
	)
==	(nP	and	nQ)
);

static_assert
(	(	Q
	and	(P	and	Q	or	nP	and	nQ)
	)
==	(P	and	Q)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	nP	and	nQ)
	)
==	(nP	and	nQ)
);

static_assert
(	(	R
	and	(P	and	Q	or	nP	and	nQ)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	or	nP	and	nQ)
	)
==	(P	and	Q	and	nR	or	nP	and	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	nP
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	nQ	or	nP	and	R)
);

static_assert
(	(	Q
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	or	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(nP	and	nQ	or	nQ	and	R)
);

static_assert
(	(	R
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	R
);
static_assert
(	(	nR
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	and	nR	or	nP	and	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	or	nP	and	R)
	)
==	(P	and	Q)
);
static_assert
(	(	nP
	and	(P	and	Q	or	nP	and	R)
	)
==	(nP	and	R)
);

static_assert
(	(	Q
	and	(P	and	Q	or	nP	and	R)
	)
==	(P	and	Q	or	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	nP	and	R)
	)
==	(nP	and	nQ	and	R)
);

static_assert
(	(	R
	and	(P	and	Q	or	nP	and	R)
	)
==	(nP	and	R	or	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	or	nP	and	R)
	)
==	(P	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	P	and	nR)
);
static_assert
(	(	nP
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	R	or	nP	and	nQ)
);

static_assert
(	(	Q
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	nQ	or	nQ	and	nR)
);

static_assert
(	(	R
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(nP	and	R	or	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	nR	or	nQ	and	nR)
);

///	Alternative representation
static_assert
(	(	P
	and	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	nR)
);
static_assert
(	(	nP
	and	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(nP	and	R	or	nP	and	nQ)
);

static_assert
(	(	Q
	and	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(P	and	Q	or	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(nP	and	nQ	or	nQ	and	nR)
);

static_assert
(	(	R
	and	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(nP	and	R	or	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(P	and	nR	or	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	or	R)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	nP
	and	(P	and	Q	or	R)
	)
==	(nP	and	R)
);

static_assert
(	(	Q
	and	(P	and	Q	or	R)
	)
==	(P	and	Q	or	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	Q	or	R)
	)
==	(nQ	and	R)
);

static_assert
(	(	R
	and	(P	and	Q	or	R)
	)
==	R
);
static_assert
(	(	nR
	and	(P	and	Q	or	R)
	)
==	(P	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(	nP
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(F)
);

static_assert
(	(	Q
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	nQ	and	nR)
);

static_assert
(	(	R
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(	nP
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(nP	and	Q	and	nR)
);

static_assert
(	(	Q
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(	nQ
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	and	nR)
);

static_assert
(	(	R
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(	nP
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(nP	and	Q	and	nR	or	nP	and	nQ	and	R)
);

static_assert
(	(	Q
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(	nQ
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	nQ	and	nR	or	nP	and	nQ	and	R)
);

static_assert
(	(	R
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(	nP
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(nP	and	Q	and	nR)
);

static_assert
(	(	Q
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(	nQ
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	and	nR)
);

static_assert
(	(	R
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(	nP
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(nP	and	Q	and	nR)
);

static_assert
(	(	Q
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(	nQ
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	and	nR)
);

static_assert
(	(	R
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(	nP
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(nP	and	nQ	or	nP	and	nR)
);

static_assert
(	(	Q
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	Q	and	nR)
);
static_assert
(	(	nQ
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(nP	and	nQ	or	nQ	and	nR)
);

static_assert
(	(	R
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(nP	and	nR	or	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	P
	and	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nP
	and	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(nP	and	nQ	and	nR)
);

static_assert
(	(	Q
	and	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nQ
	and	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(nP	and	nQ	and	nR)
);

static_assert
(	(	R
	and	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(P	and	Q	and	R)
);
static_assert
(	(	nR
	and	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(nP	and	nQ	and	nR)
);
