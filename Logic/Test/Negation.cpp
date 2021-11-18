#include "Shared.hpp"

/// ************************************************************************************************
///	(T)
/// ************************************************************************************************
static_assert
(	not
	(T)
==	(F)
);

/// ************************************************************************************************
///	(F)
/// ************************************************************************************************
static_assert
(	not
	(F)
==	(T)
);

/// ************************************************************************************************
///	(p)
/// ************************************************************************************************
static_assert
(	not
	(p)
==	(!p)
);

/// ************************************************************************************************
///	(!p)
/// ************************************************************************************************
static_assert
(	not
	(!p)
==	(p)
);

/// ************************************************************************************************
///	(p	and	q)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q)
==	(!p	or	!q)
);
static_assert
(	not
	(q	and	p)
==	(!p	or	!q)
);

/// ************************************************************************************************
///	(p	and	q	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r)
==	(!p	or	!q	or	!r)
);
static_assert
(	not
	(p	and	r	and	q)
==	(!p	or	!q	or	!r)
);

static_assert
(	not
	(q	and	p	and	r)
==	(!p	or	!q	or	!r)
);
static_assert
(	not
	(q	and	r	and	p)
==	(!p	or	!q	or	!r)
);

static_assert
(	not
	(r	and	p	and	q)
==	(!p	or	!q	or	!r)
);
static_assert
(	not
	(r	and	q	and	p)
==	(!p	or	!q	or	!r)
);

/// ************************************************************************************************
///	(p	or	q)
/// ************************************************************************************************
static_assert
(	not
	(p	or	q)
==	(!p	and	!q)
);
static_assert
(	not
	(q	or	p)
==	(!p	and	!q)
);

/// ************************************************************************************************
///	(p	or	q	or	r)
/// ************************************************************************************************
static_assert
(	not
	(p	or	q	or	r)
==	(!p	and	!q	and	!r)
);
static_assert
(	not
	(p	or	r	or	q)
==	(!p	and	!q	and	!r)
);

static_assert
(	not
	(q	or	p	or	r)
==	(!p	and	!q	and	!r)
);
static_assert
(	not
	(q	or	r	or	p)
==	(!p	and	!q	and	!r)
);

static_assert
(	not
	(r	or	p	or	q)
==	(!p	and	!q	and	!r)
);
static_assert
(	not
	(r	or	q	or	p)
==	(!p	and	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	p	and	r)
==	(!p	or	!q	and	!r)
);
static_assert
(	not
	(p	and	r	or	p	and	q)
==	(!p	or	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
///	(p	and	q	or	!p	and	!q	or	!q	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	p	and	r	or	!p	and	!q)
==	(p	and	!q	and	!r	or	!p	and	q)
);
static_assert
(	not
	(p	and	q	or	!p	and	!q	or	p	and	r)
==	(p	and	!q	and	!r	or	!p	and	q)
);

static_assert
(	not
	(p	and	r	or	p	and	q	or	!p	and	!q)
==	(p	and	!q	and	!r	or	!p	and	q)
);
static_assert
(	not
	(p	and	r	or	!p	and	!q	or	p	and	q)
==	(p	and	!q	and	!r	or	!p	and	q)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	or	p	and	r)
==	(p	and	!q	and	!r	or	!p	and	q)
);
static_assert
(	not
	(!p	and	!q	or	p	and	r	or	p	and	q)
==	(p	and	!q	and	!r	or	!p	and	q)
);

///	Alternative representation
static_assert
(	not
	(p	and	q	or	!p	and	!q	or	!q	and	r)
==	(p	and	!q	and	!r	or	!p	and	q)
);
static_assert
(	not
	(p	and	q	or	!q	and	r	or	!p	and	!q)
==	(p	and	!q	and	!r	or	!p	and	q)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	or	!q	and	r)
==	(p	and	!q	and	!r	or	!p	and	q)
);
static_assert
(	not
	(!p	and	!q	or	!q	and	r	or	p	and	q)
==	(p	and	!q	and	!r	or	!p	and	q)
);

static_assert
(	not
	(!q	and	r	or	p	and	q	or	!p	and	!q)
==	(p	and	!q	and	!r	or	!p	and	q)
);
static_assert
(	not
	(!q	and	r	or	!p	and	!q	or	p	and	q)
==	(p	and	!q	and	!r	or	!p	and	q)
);

/// ************************************************************************************************
///	(p	and	q	or	p	and	r	or	q	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	p	and	r	or	q	and	r)
==	(!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);
static_assert
(	not
	(p	and	q	or	q	and	r	or	p	and	r)
==	(!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);

static_assert
(	not
	(p	and	r	or	p	and	q	or	q	and	r)
==	(!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);
static_assert
(	not
	(p	and	r	or	q	and	r	or	p	and	q)
==	(!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);

static_assert
(	not
	(q	and	r	or	p	and	q	or	p	and	r)
==	(!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);
static_assert
(	not
	(q	and	r	or	p	and	r	or	p	and	q)
==	(!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	!q)
==	(p	and	!q	or	!p	and	q)
);
static_assert
(	not
	(!p	and	!q	or	p	and	q)
==	(p	and	!q	or	!p	and	q)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	!q	or	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	!q	or	r)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(p	and	q	or	r	or	!p	and	!q)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	or	r)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(!p	and	!q	or	r	or	p	and	q)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(r	or	p	and	q	or	!p	and	!q)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(r	or	!p	and	!q	or	p	and	q)
==	(p	and	!q	and	!r	or	!p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	r)
==	(p	and	!q	or	!p	and	!r)
);
static_assert
(	not
	(!p	and	r	or	p	and	q)
==	(p	and	!q	or	!p	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	!p	and	r	or	!q	and	!r)
///	(p	and	!r	or	!p	and	!q	or	q	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	r	or	!q	and	!r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(p	and	q	or	!q	and	!r	or	!p	and	r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(!p	and	r	or	p	and	q	or	!q	and	!r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(!p	and	r	or	!q	and	!r	or	p	and	q)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(!q	and	!r	or	p	and	q	or	!p	and	r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(!q	and	!r	or	!p	and	r	or	p	and	q)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);

///	Alternative representation
static_assert
(	not
	(p	and	!r	or	!p	and	!q	or	q	and	r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(p	and	!r	or	q	and	r	or	!p	and	!q)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(!p	and	!q	or	p	and	!r	or	q	and	r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(!p	and	!q	or	q	and	r	or	p	and	!r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);

static_assert
(	not
	(q	and	r	or	p	and	!r	or	!p	and	!q)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);
static_assert
(	not
	(q	and	r	or	!p	and	!q	or	p	and	!r)
==	(p	and	!q	and	r	or	!p	and	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	or	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	or	r)
==	(!p	and	!r	or	!q	and	!r)
);
static_assert
(	not
	(r	or	p	and	q)
==	(!p	and	!r	or	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	p	and	!q	and	!r)
==	(!p	or	!q	and	r	or	q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	p	and	q	and	r)
==	(!p	or	!q	and	r	or	q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	!p	and	!q	or	!p	and	r	or	!q	and	r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	!p	and	!q	or	!p	and	r	or	!q	and	r)
);

static_assert
(	not
	(p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	!p	and	!q	or	!p	and	r	or	!q	and	r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	!p	and	!q	or	!p	and	r	or	!q	and	r)
);

static_assert
(	not
	(!p	and	q	and	!r	or	p	and	q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	!p	and	!q	or	!p	and	r	or	!q	and	r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	p	and	!q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	!p	and	!q	or	!p	and	r	or	!q	and	r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	!q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	q	and	!r	or	!p	and	!q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);

static_assert
(	not
	(p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	!q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	q	and	!r	or	p	and	q	and	r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	!q	and	r	or	p	and	q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	!q	and	r	or	!p	and	q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);

static_assert
(	not
	(!p	and	q	and	!r	or	p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	p	and	q	and	r	or	!p	and	!q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	p	and	!q	and	!r	or	!p	and	!q	and	r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	!p	and	!q	and	r	or	p	and	q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	!p	and	!q	and	r	or	p	and	!q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);

static_assert
(	not
	(!p	and	!q	and	r	or	p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	p	and	q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	!p	and	q	and	!r	or	p	and	q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q)
==	(p	and	!q	or	p	and	!r	or	!p	and	q)
);
static_assert
(	not
	(!p	and	!q	or	p	and	q	and	r)
==	(p	and	!q	or	p	and	!r	or	!p	and	q)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
==	(p	and	!q	or	p	and	!r	or	!p	and	q	and	r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!r	or	!p	and	!q)
==	(p	and	!q	or	p	and	!r	or	!p	and	q	and	r)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	and	r	or	!p	and	!r)
==	(p	and	!q	or	p	and	!r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!q	or	!p	and	!r	or	p	and	q	and	r)
==	(p	and	!q	or	p	and	!r	or	!p	and	q	and	r)
);

static_assert
(	not
	(!p	and	!r	or	p	and	q	and	r	or	!p	and	!q)
==	(p	and	!q	or	p	and	!r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!r	or	!p	and	!q	or	p	and	q	and	r)
==	(p	and	!q	or	p	and	!r	or	!p	and	q	and	r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	or	!q	and	!r	or	!p	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!r	or	!p	and	!q	or	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!r	or	!q	and	!r	or	!p	and	!q)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(p	and	q	and	r	or	!q	and	!r	or	!p	and	!q	or	!p	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(p	and	q	and	r	or	!q	and	!r	or	!p	and	!r	or	!p	and	!q)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	and	r	or	!p	and	!r	or	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!q	or	p	and	q	and	r	or	!q	and	!r	or	!p	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!q	or	!p	and	!r	or	p	and	q	and	r	or	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!q	or	!p	and	!r	or	!q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!q	or	!q	and	!r	or	p	and	q	and	r	or	!p	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!q	or	!q	and	!r	or	!p	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);

static_assert
(	not
	(!p	and	!r	or	p	and	q	and	r	or	!p	and	!q	or	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!r	or	p	and	q	and	r	or	!q	and	!r	or	!p	and	!q)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!r	or	!p	and	!q	or	p	and	q	and	r	or	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!r	or	!p	and	!q	or	!q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!r	or	!q	and	!r	or	p	and	q	and	r	or	!p	and	!q)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!p	and	!r	or	!q	and	!r	or	!p	and	!q	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);

static_assert
(	not
	(!q	and	!r	or	p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!q	and	!r	or	p	and	q	and	r	or	!p	and	!r	or	!p	and	!q)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!q	and	!r	or	!p	and	!q	or	p	and	q	and	r	or	!p	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!q	and	!r	or	!p	and	!q	or	!p	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!q	and	!r	or	!p	and	!r	or	p	and	q	and	r	or	!p	and	!q)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);
static_assert
(	not
	(!q	and	!r	or	!p	and	!r	or	!p	and	!q	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r)
);

/// ************************************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	and	!r)
==	(p	and	!q	or	!p	and	r	or	q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	!r	or	p	and	q	and	r)
==	(p	and	!q	or	!p	and	r	or	q	and	!r)
);
