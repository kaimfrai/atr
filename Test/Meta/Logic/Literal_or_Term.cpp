import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	or	q)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(!p)
	or	(p	or	q)
	)
==	(T)
);

static_assert
(	(	(q)
	or	(p	or	q)
	)
==	(p	or	q)
);
static_assert
(	(	(!q)
	or	(p	or	q)
	)
==	(T)
);

static_assert
(	(	(r)
	or	(p	or	q)
	)
==	(p	or	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	or	q)
	)
==	(p	or	q	or	!r)
);

/// ************************************************************************************************
///	(p	or	q	or	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	or	q	or	r)
	)
==	(p	or	q	or	r)
);
static_assert
(	(	(!p)
	or	(p	or	q	or	r)
	)
==	(T)
);

static_assert
(	(	(q)
	or	(p	or	q	or	r)
	)
==	(p	or	q	or	r)
);
static_assert
(	(	(!q)
	or	(p	or	q	or	r)
	)
==	(T)
);

static_assert
(	(	(r)
	or	(p	or	q	or	r)
	)
==	(p	or	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	or	q	or	r)
	)
==	(T)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	or	p	and	r)
	)
==	(p)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	p	and	r)
	)
==	(!p	or	q	or	r)
);

static_assert
(	(	(q)
	or	(p	and	q	or	p	and	r)
	)
==	(p	and	r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	p	and	r)
	)
==	(p	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	or	p	and	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	p	and	r)
	)
==	(p	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
///	(p	and	q	or	!p	and	!q	or	!q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	or	!q)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	or	q	or	r)
);

static_assert
(	(	(q)
	or	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	or	q	or	r)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	or	!p	and	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	or	!q	or	!r)
);

///	Alternative representation
static_assert
(	(	(p)
	or	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	or	!q)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(!p	or	q	or	r)
);

static_assert
(	(	(q)
	or	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(!p	or	q	or	r)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	and	q	or	!p	and	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	or	!q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r	or	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	or	q	and	r)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(!p	or	q	or	r)
);

static_assert
(	(	(q)
	or	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	or	!q	or	r)
);

static_assert
(	(	(r)
	or	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	or	q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	or	!p	and	!q)
	)
==	(p	or	!q)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	!p	and	!q)
	)
==	(!p	or	q)
);

static_assert
(	(	(q)
	or	(p	and	q	or	!p	and	!q)
	)
==	(!p	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	!p	and	!q)
	)
==	(p	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	or	!p	and	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	or	!p	and	!q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q	or	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	or	!q	or	r)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	or	q	or	r)
);

static_assert
(	(	(q)
	or	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	or	q	or	r)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	or	!q	or	r)
);

static_assert
(	(	(r)
	or	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	or	!p	and	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	!p	and	!q	or	r)
	)
==	(T)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	or	!p	and	r)
	)
==	(p	or	r)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	!p	and	r)
	)
==	(!p	or	q)
);

static_assert
(	(	(q)
	or	(p	and	q	or	!p	and	r)
	)
==	(!p	and	r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	!p	and	r)
	)
==	(p	or	!q	or	r)
);

static_assert
(	(	(r)
	or	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	!p	and	r)
	)
==	(!p	or	q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r	or	!q	and	!r)
///	(p	and	!r	or	!p	and	!q	or	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	or	!q	or	r)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	or	q	or	!r)
);

static_assert
(	(	(q)
	or	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	or	q	or	!r)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	or	!q	or	r)
);

static_assert
(	(	(r)
	or	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	or	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	or	q	or	!r)
);

///	Alternative representation
static_assert
(	(	(p)
	or	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	or	!q	or	r)
);
static_assert
(	(	(!p)
	or	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	or	q	or	!r)
);

static_assert
(	(	(q)
	or	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	or	q	or	!r)
);
static_assert
(	(	(!q)
	or	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	or	!q	or	r)
);

static_assert
(	(	(r)
	or	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	or	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	or	q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	or	r)
	)
==	(p	or	r)
);
static_assert
(	(	(!p)
	or	(p	and	q	or	r)
	)
==	(!p	or	q	or	r)
);

static_assert
(	(	(q)
	or	(p	and	q	or	r)
	)
==	(q	or	r)
);
static_assert
(	(	(!q)
	or	(p	and	q	or	r)
	)
==	(p	or	!q	or	r)
);

static_assert
(	(	(r)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	or	r)
	)
==	(T)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p)
);
static_assert
(	(	(!p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(!p	or	q	and	r	or	!q	and	!r)
);

static_assert
(	(	(q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	r	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	or	q	and	!r)
);
static_assert
(	(	(!p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(!p	or	q	and	r	or	!q	and	!r)
);

static_assert
(	(	(q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	r	or	!p	and	!r	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	or	!p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	or	q	and	!r	or	!q	and	r)
);
static_assert
(	(	(!p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(!p	or	q	and	r	or	!q	and	!r)
);

static_assert
(	(	(q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	!r	or	!p	and	r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	r	or	!p	and	!r	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	!q	or	!p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	q	or	!p	and	!q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	or	q	and	!r)
);
static_assert
(	(	(!p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(!p	or	q	and	r	or	!q	and	!r)
);

static_assert
(	(	(q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	r	or	!p	and	!r	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	or	!p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	or	q	and	!r)
);
static_assert
(	(	(!p)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(!p	or	q	and	r	or	!q	and	!r)
);

static_assert
(	(	(q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	r	or	!p	and	!r	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	or	!p	and	q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	or	!q	or	!r)
);
static_assert
(	(	(!p)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	or	q	and	r	or	!q	and	!r)
);

static_assert
(	(	(q)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	or	q	or	!r)
);
static_assert
(	(	(!q)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	r	or	!p	and	!r	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	or	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	or	!p	and	!q	or	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	or	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	or	!q	and	!r)
);
static_assert
(	(	(!p)
	or	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	or	q	and	r)
);

static_assert
(	(	(q)
	or	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!r	or	q)
);
static_assert
(	(	(!q)
	or	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	r	or	!q)
);

static_assert
(	(	(r)
	or	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!q	or	r)
);
static_assert
(	(	(!r)
	or	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	or	!r)
);
