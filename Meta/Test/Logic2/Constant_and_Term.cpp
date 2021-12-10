import Meta.Logic2.Test.Data;

/// ************************************************************************************************
///	(p	or	q)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(F)
	and	(p	or	q)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	or	q	or	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	or	q	or	r)
	)
==	(p	or	q	or	r)
);
static_assert
(	(	(F)
	and	(p	or	q	or	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(F)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
///	(p	and	q	or	!p	and	!q	or	!q	and	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	or	p	and	r	or	!p	and	!q)
);
static_assert
(	(	(F)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(F)
);

///	Alternative representation
static_assert
(	(	(T)
	and	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	and	q	or	p	and	r	or	!p	and	!q)
);
static_assert
(	(	(F)
	and	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r	or	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	or	p	and	r	or	q	and	r)
);
static_assert
(	(	(F)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	or	!p	and	!q)
);
static_assert
(	(	(F)
	and	(p	and	q	or	!p	and	!q)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q	or	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	or	!p	and	!q	or	r)
);
static_assert
(	(	(F)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	or	!p	and	r)
);
static_assert
(	(	(F)
	and	(p	and	q	or	!p	and	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r	or	!q	and	!r)
///	(p	and	!r	or	!p	and	!q	or	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q	or	!p	and	r	or	!q	and	!r)
);
static_assert
(	(	(F)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(F)
);

///	Alternative representation
static_assert
(	(	(T)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	q	or	!p	and	r	or	!q	and	!r)
);
static_assert
(	(	(F)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	or	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(F)
	and	(p	and	q	or	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r)
);
static_assert
(	(	(F)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
);
static_assert
(	(	(F)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
);
static_assert
(	(	(F)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	r	or	!p	and	!q)
);
static_assert
(	(	(F)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(	(F)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);
static_assert
(	(	(F)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(F)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	(	(F)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);
