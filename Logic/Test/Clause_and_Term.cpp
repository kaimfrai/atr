#include "Shared.hpp"

/// ****************************************************************************
///	(p	or	q)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	or	q)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	or	q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	or	q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	or	q)
	)
==	(p	and	!q)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	or	q)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	or	q)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	and	(p	or	q)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	or	q)
	)
==	(p	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	or	q)
	)
==	(!p	and	q)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	or	q)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	or	q)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	and	(p	or	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	or	q)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	or	q)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	or	q)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	or	q)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	or	q)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	or	q)
	)
==	(q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	or	q)
	)
==	(!q	and	r	and	p)
);
static_assert
(	(	(!q	and	!r)
	and	(p	or	q)
	)
==	(p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	or	q	or	r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	or	q	or	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	or	q	or	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	or	q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	or	q	or	r)
	)
==	(p	and	!q)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	or	q	or	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	or	q	or	r)
	)
==	(p	and	!q	and	!r	and	p)
);

static_assert
(	(	(p	and	r)
	and	(p	or	q	or	r)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	or	q	or	r)
	)
==	(p	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	or	q	or	r)
	)
==	(!p	and	q)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	or	q	or	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	or	q	or	r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	and	(p	or	q	or	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	or	q	or	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	or	q	or	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	or	q	or	r)
	)
==	(!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	or	q	or	r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	or	q	or	r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	or	q	or	r)
	)
==	(q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	or	q	or	r)
	)
==	(!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	or	q	or	r)
	)
==	(p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	p	and	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	p	and	r)
	)
==	(F)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r	or	q	and	r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(F)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q	or	r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	!p	and	!q	or	r)
	)
==	(!p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	!p	and	r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	!p	and	r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	!p	and	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	!p	and	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	!p	and	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	!p	and	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	!p	and	r)
	)
==	(!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	!p	and	r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	!p	and	r)
	)
==	(!q	and	r	and	!p)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	!p	and	r)
	)
==	(F)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	r	or	!q	and	!r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(!q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	or	r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	or	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	or	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	or	r)
	)
==	(p	and	!q	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	or	r)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	or	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	or	r)
	)
==	(!p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	or	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	or	r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	or	r)
	)
==	(!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	or	r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	or	r)
	)
==	(p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	or	r)
	)
==	(!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	or	r)
	)
==	(F)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(F)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	!q	and	!r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(!p	and	q	and	!r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	!q	and	!r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(F)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(F)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and!r)
	)
==	(p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(q	and	r	and	p)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(F)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q)
	)
==	(!p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(F)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(F)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	q	and	!r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(q	and	r	and	p)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(!p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	q	and	!r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(q	and	r	and	p)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!p	and	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(p	and	!q)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(p	and	!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(p	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(!p	and	q)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(!p	and	!q)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);
static_assert
(	(	(!p	and	!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!p	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);

static_assert
(	(	(q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);

static_assert
(	(	(!q	and	r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(F)
);
static_assert
(	(	(!q	and	!r)
	and	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(!p	and	!q	and	!r)
);
