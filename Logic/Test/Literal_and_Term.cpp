#include "Shared.hpp"

/// ****************************************************************************
///	(p	or	q)
/// ****************************************************************************
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
==	(!q	and	p)
);

static_assert
(	(	(r)
	and	(p	or	q)
	)
==	(r	and	p	or	r	and	q)
);

/// ****************************************************************************
///	(p	or	q	or	r)
/// ****************************************************************************
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
==	(!q	and	p	or	!q	and	r)
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
==	(!r	and	p	or	!r	and	q)
);

/// ****************************************************************************
///	(p	or	q	and	r)
/// ****************************************************************************
static_assert
(	(	(p)
	and	(p	or	q	and	r)
	)
==	(p)
);
static_assert
(	(	(!p)
	and	(p	or	q	and	r)
	)
==	(!p	and	q	and	r)
);

static_assert
(	(	(q)
	and	(p	or	q	and	r)
	)
==	(q	and	p	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	or	q	and	r)
	)
==	(!q	and	p)
);

static_assert
(	(	(r)
	and	(p	or	q	and	r)
	)
==	(r	and	p	or	r	and	q)
);
static_assert
(	(	(!r)
	and	(p	or	q	and	r)
	)
==	(!r	and	p)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r)
/// ****************************************************************************
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
==	(q	and	p)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	p	and	r)
	)
==	(!q	and	p	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	p	and	r)
	)
==	(r	and	p)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	p	and	r)
	)
==	(!r	and	p	and	q)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ****************************************************************************
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
==	(q	and	p)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!q	and	!p)
);

static_assert
(	(	(r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(r	and	p	and	q	or	r	and	!p	and	!q)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	r)
/// ****************************************************************************
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
==	(q	and	p	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	!p	and	r)
	)
==	(!q	and	!p	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	!p	and	r)
	)
==	(r	and	q	or	r	and	!p)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(!r	and	p	and	q)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q	and	r)
/// ****************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	!p	and	!q	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	!p	and	!q	and	r)
	)
==	(!p	and	!q	and	r)
);

static_assert
(	(	(q)
	and	(p	and	q	or	!p	and	!q	and	r)
	)
==	(q	and	p)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	!p	and	!q	and	r)
	)
==	(!q	and	!p	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	or	!p	and	!q	and	r)
	)
==	(r	and	p	and	q	or	r	and	!p	and	!q)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	!p	and	!q	and	r)
	)
==	(!r	and	p	and	q)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	r)
/// ****************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r	or	!p	and	!q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r	or	!p	and	!q	and	r)
	)
==	(!p	and	!q	and	r)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r	or	!p	and	!q	and	r)
	)
==	(q	and	p	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	!p	and	!q	and	r)
	)
==	(!q	and	!p	and	r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	!p	and	!q	and	r)
	)
==	(r	and	p	and	q	or	r	and	!p	and	!q)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	r)
	)
==	(F)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ****************************************************************************
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
==	(q	and	p	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!q	and	!p	and	!r)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(r	and	p	and	q)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!r	and	!p	and	!q)
);

/// ****************************************************************************
///	(p	and	q	or	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	r	or	!p	and	!q)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	r	or	!p	and	!q)
	)
==	(!p	and	r	or	!p	and	!q)
);

static_assert
(	(	(q)
	and	(p	and	q	or	r	or	!p	and	!q)
	)
==	(q	and	p	or	q	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	r	or	!p	and	!q)
	)
==	(!q	and	r	or	!q	and	!p)
);

static_assert
(	(	(r)
	and	(p	and	q	or	r	or	!p	and	!q)
	)
==	(r)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	r	or	!p	and	!q)
	)
==	(!r	and	p	and	q	or	!r	and	!p	and	!q)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
/// ****************************************************************************
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
==	(q	and	p)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!q	and	r	or	!q	and	!p)
);

static_assert
(	(	(r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(r	and	p	or	r	and	!q)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!r	and	p	and	q	or	!r	and	!p	and	!q)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
/// ****************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	r	or	p	and	q)
);
static_assert
(	(	(!p)
	and	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	!q	or	!p	and	!r)
);

static_assert
(	(	(q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(q	and	p	or	q	and	!r)
);
static_assert
(	(	(!q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!q	and	r	or	!q	and	!p)
);

static_assert
(	(	(r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(r	and	p	or	r	and	!q)
);
static_assert
(	(	(!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!r	and	!p	or	!r	and	q)
);
