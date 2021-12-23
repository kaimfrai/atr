import Legacy.Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	or	q)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	or	q)
	)
==	(p)
);
static_assert
(	(	(!p)
	and	(p	or	q)
	)
==	(!p	and	q)
);

static_assert
(	(	(q)
	and	(p	or	q)
	)
==	(q)
);
static_assert
(	(	(!q)
	and	(p	or	q)
	)
==	(p	and	!q)
);

static_assert
(	(	(r)
	and	(p	or	q)
	)
==	(p	and	r	or	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	or	q)
	)
==	(p	and	!r	or	q	and	!r)
);

/// ************************************************************************************************
///	(p	or	q	or	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	or	q	or	r)
	)
==	(p)
);
static_assert
(	(	(!p)
	and	(p	or	q	or	r)
	)
==	(!p	and	q	or	!p	and	r)
);

static_assert
(	(	(q)
	and	(p	or	q	or	r)
	)
==	(q)
);
static_assert
(	(	(!q)
	and	(p	or	q	or	r)
	)
==	(p	and	!q	or	!q	and	r)
);

static_assert
(	(	(r)
	and	(p	or	q	or	r)
	)
==	(r)
);
static_assert
(	(	(!r)
	and	(p	or	q	or	r)
	)
==	(p	and	!r	or	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);

static_assert
(	(	(q)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	!q	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
///	(p	and	q	or	!p	and	!q	or	!q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	and	!q)
);

static_assert
(	(	(q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	or	!q	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	r	or	!q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	!r	or	!p	and	!q	and	!r)
);

///	Alternative representation
static_assert
(	(	(p)
	and	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(!p	and	!q)
);

static_assert
(	(	(q)
	and	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(!p	and	!q	or	!q	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	and	r	or	!q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	!p	and	!q	or	!q	and	r)
	)
==	(p	and	q	and	!r	or	!p	and	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r	or	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(!p	and	q	and	r)
);

static_assert
(	(	(q)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	!q	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	r	or	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q)
);

static_assert
(	(	(q)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q)
);

static_assert
(	(	(r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	and	r	or	!p	and	!q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	and	!r	or	!p	and	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q	or	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	!q	or	!p	and	r)
);

static_assert
(	(	(q)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	!q	or	!q	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	and	!r	or	!p	and	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	!p	and	r)
	)
==	(!p	and	r)
);

static_assert
(	(	(q)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	!p	and	r)
	)
==	(!p	and	!q	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	!p	and	r)
	)
==	(!p	and	r	or	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r	or	!q	and	!r)
///	(p	and	!r	or	!p	and	!q	or	q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q	or	p	and	!r)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	r	or	!p	and	!q)
);

static_assert
(	(	(q)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	!q	or	!q	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	r	or	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	!r	or	!q	and	!r)
);

///	Alternative representation
static_assert
(	(	(p)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	q	or	p	and	!r)
);
static_assert
(	(	(!p)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	r	or	!p	and	!q)
);

static_assert
(	(	(q)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	q	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	!q	or	!q	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(!p	and	r	or	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	!r	or	!p	and	!q	or	q	and	r)
	)
==	(p	and	!r	or	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	r)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	r)
	)
==	(!p	and	r)
);

static_assert
(	(	(q)
	and	(p	and	q	or	r)
	)
==	(p	and	q	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	r)
	)
==	(!q	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	r)
	)
==	(r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(!p	and	q	and	!r	or	!p	and	!q	and	r)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	!q	and	!r	or	!p	and	!q	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	q	and	r	or	!p	and	!q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
	)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!q	or	!p	and	!r)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!q	or	!q	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!r	or	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ************************************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);
