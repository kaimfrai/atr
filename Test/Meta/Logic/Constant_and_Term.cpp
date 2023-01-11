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
///	(P	and	Q	or	P	and	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	or	P	and	R)
	)
==	(P	and	Q	or	P	and	R)
);
static_assert
(	(	F
	and	(P	and	Q	or	P	and	R)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	nP	and	nQ)
///	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);
static_assert
(	(	F
	and	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	F
);

///	Alternative representation
static_assert
(	(	T
	and	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);
static_assert
(	(	F
	and	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);
static_assert
(	(	F
	and	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ)
);
static_assert
(	(	F
	and	(P	and	Q	or	nP	and	nQ)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);
static_assert
(	(	F
	and	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	or	nP	and	R)
	)
==	(P	and	Q	or	nP	and	R)
);
static_assert
(	(	F
	and	(P	and	Q	or	nP	and	R)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	F
	and	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	F
);

///	Alternative representation
static_assert
(	(	T
	and	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);
static_assert
(	(	F
	and	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	or	R)
	)
==	(P	and	Q	or	R)
);
static_assert
(	(	F
	and	(P	and	Q	or	R)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);
static_assert
(	(	F
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);
static_assert
(	(	F
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
);
static_assert
(	(	F
	and	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	and	R	or	nP	and	nQ)
);
static_assert
(	(	F
	and	(P	and	Q	and	R	or	nP	and	nQ)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);
static_assert
(	(	F
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);
static_assert
(	(	F
	and	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	F
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	T
	and	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
);
static_assert
(	(	F
	and	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	F
);
