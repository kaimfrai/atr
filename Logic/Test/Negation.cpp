#include "Shared.hpp"

/// ****************************************************************************
///	(T)
/// ****************************************************************************
static_assert
(	not
	(T)
==	(F)
);

/// ****************************************************************************
///	(F)
/// ****************************************************************************
static_assert
(	not
	(F)
==	(T)
);

/// ****************************************************************************
///	(p)
/// ****************************************************************************
static_assert
(	not
	(p)
==	(!p)
);

/// ****************************************************************************
///	(!p)
/// ****************************************************************************
static_assert
(	not
	(!p)
==	(p)
);

/// ****************************************************************************
///	(p	and	q)
/// ****************************************************************************
static_assert
(	not
	(p	and	q)
==	(!p	or	!q)
);
static_assert
(	not
	(q	and	p)
==	(!q	or	!p)
);

/// ****************************************************************************
///	(p	and	q	and	r)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	and	r)
==	(!p	or	!q	or	!r)
);
static_assert
(	not
	(p	and	r	and	q)
==	(!p	or	!r	or	!q)
);
static_assert
(	not
	(q	and	p	and	r)
==	(!q	or	!p	or	!r)
);
static_assert
(	not
	(q	and	r	and	p)
==	(!q	or	!r	or	!p)
);

/// ****************************************************************************
///	(p	or	q)
/// ****************************************************************************
static_assert
(	not
	(p	or	q)
==	(!p	and	!q)
);
static_assert
(	not
	(q	or	p)
==	(!q	and	!p)
);

/// ****************************************************************************
///	(p	or	q	or	r)
/// ****************************************************************************
static_assert
(	not
	(p	or	q	or	r)
==	(!p	and	!q	and	!r)
);
static_assert
(	not
	(p	or	r	or	q)
==	(!p	and	!r	and	!q)
);
static_assert
(	not
	(q	or	p	or	r)
==	(!q	and	!p	and	!r)
);
static_assert
(	not
	(q	or	r	or	p)
==	(!q	and	!r	and	!p)
);

/// ****************************************************************************
///	(p	or	q	and	r)
/// ****************************************************************************
static_assert
(	not
	(p	or	q	and	r)
==	(!p	and	!q	or	!p	and	!r)
);
static_assert
(	not
	(q	and	r	or	p)
==	(!q	and	!p	or	!r	and	!p)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	or	p	and	r)
==	(!p	or	!q	and	!r)
);
static_assert
(	not
	(p	and	r	or	p	and	q)
==	(!p	or	!r	and	!q)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	!q)
==	(!p	and	q	or	!q	and	p)
);
static_assert
(	not
	(!p	and	!q	or	p	and	q)
==	(p	and	!q	or	q	and	!p)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	r)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	r)
==	(!p	and	!r	or	!q	and	p)
);
static_assert
(	not
	(!p	and	r	or	p	and	q)
==	(p	and	!q	or	!r	and	!p)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q	and	r)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	or	!p	and	!q	and	r)
==	(!p	and	q	or	!p	and	!r	or	!q	and	p)
);
static_assert
(	not
	(!p	and	!q	and	r	or	p	and	q)
==	(p	and	!q	or	q	and	!p	or	!r	and	!p)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	r)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	and	r)
==	(!p	and	q	or	!q	and	p	or	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	p	and	q	and	r)
==	(p	and	!q	or	q	and	!p	or	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	and	!r)
==	(!p	and	q	or	!p	and	r	or	!q	and	p	or	!r	and	p)
);
static_assert
(	not
	(!p	and	!q	and	!r	or	p	and	q	and	r)
==	(p	and	!q	or	p	and	!r	or	q	and	!p	or	r	and	!p)
);

/// ****************************************************************************
///	(p	and	q	or	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	or	r	or	!p	and	!q)
==	(!p	and	!r	and	q	or	!q	and	!r	and	p)
);
static_assert
(	not
	(p	and	q	or	!p	and	!q	or	r)
==	(!p	and	q	and	!r	or	!q	and	p	and	!r)
);

static_assert
(	not
	(r	or	p	and	q	or	!p	and	!q)
==	(!r	and	!p	and	q	or	!r	and	!q	and	p)
);
static_assert
(	not
	(r	or	!p	and	!q	or	p	and	q)
==	(!r	and	p	and	!q	or	!r	and	q	and	!p)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	or	r)
==	(p	and	!q	and	!r	or	q	and	!p	and	!r)
);
static_assert
(	not
	(!p	and	!q	or	r	or	p	and	q)
==	(p	and	!r	and	!q	or	q	and	!r	and	!p)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	or	p	and	r	or	!p	and	!q)
==	(!p	and	q	or	!q	and	!r	and	p)
);
static_assert
(	not
	(p	and	q	or	!p	and	!q	or	p	and	r)
==	(!p	and	q	or	!q	and	p	and	!r)
);

static_assert
(	not
	(p	and	r	or	p	and	q	or	!p	and	!q)
==	(!p	and	q	or	!r	and	!q	and	p)
);
static_assert
(	not
	(p	and	r	or	!p	and	!q	or	p	and	q)
==	(!p	and	q	or	!r	and	p	and	!q)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	or	p	and	r)
==	(p	and	!q	and	!r	or	q	and	!p)
);
static_assert
(	not
	(!p	and	!q	or	p	and	r	or	p	and	q)
==	(p	and	!r	and	!q	or	q	and	!p)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
/// ****************************************************************************
static_assert
(	not
	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
==	(!p	and	q	and	r	or	!q	and	!r	and	p)
);
static_assert
(	not
	(p	and	q	or	p	and	r	or	!p	and	!r	or	!p	and	!q)
==	(!p	and	r	and	q	or	!q	and	!r	and	p)
);
static_assert
(	not
	(p	and	q	or	!p	and	!q	or	p	and	r	or	!p	and	!r)
==	(!p	and	q	and	r	or	!q	and	p	and	!r)
);
static_assert
(	not
	(p	and	q	or	!p	and	!q	or	!p	and	!r	or	p	and	r)
==	(!p	and	q	and	r	or	!q	and	p	and	!r)
);
static_assert
(	not
	(p	and	q	or	!p	and	!r	or	p	and	r	or	!p	and	!q)
==	(!p	and	r	and	q	or	!q	and	p	and	!r)
);
static_assert
(	not
	(p	and	q	or	!p	and	!r	or	!p	and	!q	or	p	and	r)
==	(!p	and	r	and	q	or	!q	and	p	and	!r)
);

static_assert
(	not
	(p	and	r	or	p	and	q	or	!p	and	!q	or	!p	and	!r)
==	(!p	and	q	and	r	or	!r	and	!q	and	p)
);
static_assert
(	not
	(p	and	r	or	p	and	q	or	!p	and	!r	or	!p	and	!q)
==	(!p	and	r	and	q	or	!r	and	!q	and	p)
);
static_assert
(	not
	(p	and	r	or	!p	and	!q	or	p	and	q	or	!p	and	!r)
==	(!p	and	q	and	r	or	!r	and	p	and	!q)
);
static_assert
(	not
	(p	and	r	or	!p	and	!q	or	!p	and	!r	or	p	and	q)
==	(!p	and	q	and	r	or	!r	and	p	and	!q)
);
static_assert
(	not
	(p	and	r	or	!p	and	!r	or	p	and	q	or	!p	and	!q)
==	(!p	and	r	and	q	or	!r	and	p	and	!q)
);
static_assert
(	not
	(p	and	r	or	!p	and	!r	or	!p	and	!q	or	p	and	q)
==	(!p	and	r	and	q	or	!r	and	p	and	!q)
);

static_assert
(	not
	(!p	and	!q	or	p	and	q	or	p	and	r	or	!p	and	!r)
==	(p	and	!q	and	!r	or	q	and	!p	and	r)
);
static_assert
(	not
	(!p	and	!q	or	p	and	q	or	!p	and	!r	or	p	and	r)
==	(p	and	!q	and	!r	or	q	and	!p	and	r)
);
static_assert
(	not
	(!p	and	!q	or	p	and	r	or	p	and	q	or	!p	and	!r)
==	(p	and	!r	and	!q	or	q	and	!p	and	r)
);
static_assert
(	not
	(!p	and	!q	or	p	and	r	or	!p	and	!r	or	p	and	q)
==	(p	and	!r	and	!q	or	q	and	!p	and	r)
);
static_assert
(	not
	(!p	and	!q	or	!p	and	!r	or	p	and	q	or	p	and	r)
==	(p	and	!q	and	!r	or	q	and	r	and	!p)
);
static_assert
(	not
	(!p	and	!q	or	!p	and	!r	or	p	and	r	or	p	and	q)
==	(p	and	!r	and	!q	or	q	and	r	and	!p)
);

static_assert
(	not
	(!p	and	!r	or	p	and	q	or	p	and	r	or	!p	and	!q)
==	(p	and	!q	and	!r	or	r	and	!p	and	q)
);
static_assert
(	not
	(!p	and	!r	or	p	and	q	or	!p	and	!q	or	p	and	r)
==	(p	and	!q	and	!r	or	r	and	!p	and	q)
);
static_assert
(	not
	(!p	and	!r	or	p	and	r	or	p	and	q	or	!p	and	!q)
==	(p	and	!r	and	!q	or	r	and	!p	and	q)
);
static_assert
(	not
	(!p	and	!r	or	p	and	r	or	!p	and	!q	or	p	and	q)
==	(p	and	!r	and	!q	or	r	and	!p	and	q)
);
static_assert
(	not
	(!p	and	!r	or	!p	and	!q	or	p	and	q	or	p	and	r)
==	(p	and	!q	and	!r	or	r	and	q	and	!p)
);
static_assert
(	not
	(!p	and	!r	or	!p	and	!q	or	p	and	r	or	p	and	q)
==	(p	and	!r	and	!q	or	r	and	q	and	!p)
);
