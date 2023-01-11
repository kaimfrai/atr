import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(P	or	Q)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	or	Q)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	or	Q)
	)
==	(P	or	Q)
);

/// ************************************************************************************************
///	(P	or	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	or	Q	or	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	or	Q	or	R)
	)
==	(P	or	Q	or	R)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	or	P	and	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	P	and	R)
	)
==	(P	and	Q	or	P	and	R)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	nP	and	nQ)
///	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	P	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);

///	Alternative representation
static_assert
(	(	(T)
	or	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	nP	and	nQ	or	nQ	and	R)
	)
==	(P	and	Q	or	P	and	R	or	nP	and	nQ)
);

/// ************************************************************************************************
///	(P	and	Q	or	P	and	R	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	P	and	R	or	Q	and	R)
	)
==	(P	and	Q	or	P	and	R	or	Q	and	R)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	or	nP	and	nQ)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	nP	and	nQ)
	)
==	(P	and	Q	or	nP	and	nQ)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	nQ	or	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	nP	and	nQ	or	R)
	)
==	(P	and	Q	or	nP	and	nQ	or	R)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	or	nP	and	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	nP	and	R)
	)
==	(P	and	Q	or	nP	and	R)
);

/// ************************************************************************************************
///	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
///	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);

///	Alternative representation
static_assert
(	(	(T)
	or	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	nR	or	nP	and	nQ	or	Q	and	R)
	)
==	(P	and	Q	or	nP	and	R	or	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	or	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	or	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	or	R)
	)
==	(P	and	Q	or	R)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
	)
==	(P	and	Q	and	R	or	P	and	nQ	and	nR	or	nP	and	Q	and	nR	or	nP	and	nQ	and	R)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	and	R	or	nP	and	nQ)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	and	R	or	nP	and	nQ)
	)
==	(P	and	Q	and	R	or	nP	and	nQ)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	or	nP	and	nR	or	nQ	and	nR)
);

/// ************************************************************************************************
///	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
/// ************************************************************************************************
static_assert
(	(	(T)
	or	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
	)
==	(P	and	Q	and	R	or	nP	and	nQ	and	nR)
);
