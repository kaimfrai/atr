#include "Shared.hpp"

/// ****************************************************************************
///	(p	and	q)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	or	(p	and	q)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	or	(p	and	q)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	!r)
	or	(p	and	q)
	)
==	(p	and	q)
);

static_assert
(	(	(p	and	!q)
	or	(p	and	q)
	)
==	(p)
);
static_assert
(	(	(p	and	!q	and	r)
	or	(p	and	q)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	or	(p	and	q)
	)
==	(p	and	q	or	p	and	!r)
);

static_assert
(	(	(p	and	r)
	or	(p	and	q)
	)
==	(p	and	q	or	p	and	r)
);
static_assert
(	(	(p	and	!r)
	or	(p	and	q)
	)
==	(p	and	q	or	p	and	!r)
);

static_assert
(	(	(!p	and	q)
	or	(p	and	q)
	)
==	(q)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(p	and	q)
	)
==	(p	and	q	or	q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	or	(p	and	q)
	)
==	(p	and	q	or	q	and	!r)
);

static_assert
(	(	(!p	and	!q)
	or	(p	and	q)
	)
==	(p	and	q	or	!p	and	!q)
);
static_assert
(	(	(!p	and	!q	and	r)
	or	(p	and	q)
	)
==	(p	and	q	or	!p	and	!q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	or	(p	and	q)
	)
==	(p	and	q	or	!p	and	!q	and	!r)
);

static_assert
(	(	(!p	and	r)
	or	(p	and	q)
	)
==	(p	and	q	or	!p	and	r)
);
static_assert
(	(	(!p	and	!r)
	or	(p	and	q)
	)
==	(p	and	q	or	!p	and	!r)
);

static_assert
(	(	(q	and	r)
	or	(p	and	q)
	)
==	(p	and	q	or	q	and	r)
);
static_assert
(	(	(q	and	!r)
	or	(p	and	q)
	)
==	(p	and	q	or	q	and	!r)
);

static_assert
(	(	(!q	and	r)
	or	(p	and	q)
	)
==	(p	and	q	or	!q	and	r)
);
static_assert
(	(	(!q	and	!r)
	or	(p	and	q)
	)
==	(p	and	q	or	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	or	(p	and	q	and	r)
	)
==	(p	and	q)
);
static_assert
(	(	(p	and	q	and	r)
	or	(p	and	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(p	and	q	and	!r)
	or	(p	and	q	and	r)
	)
==	(p	and	q)
);

static_assert
(	(	(p	and	!q)
	or	(p	and	q	and	r)
	)
==	(p	and	!q	or	p	and	r)
);
static_assert
(	(	(p	and	!q	and	r)
	or	(p	and	q	and	r)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!q	and	!r)
	or	(p	and	q	and	r)
	)
==	(p	and	!q	and	!r	or	p	and	q	and	r)
);

static_assert
(	(	(p	and	r)
	or	(p	and	q	and	r)
	)
==	(p	and	r)
);
static_assert
(	(	(p	and	!r)
	or	(p	and	q	and	r)
	)
==	(p	and	!r	or	p	and	q)
);

static_assert
(	(	(!p	and	q)
	or	(p	and	q	and	r)
	)
==	(!p	and	q	or	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(p	and	q	and	r)
	)
==	(q	and	r)
);
static_assert
(	(	(!p	and	q	and	!r)
	or	(p	and	q	and	r)
	)
==	(!p	and	q	and	!r	or	p	and	q	and	r)
);

static_assert
(	(	(!p	and	!q)
	or	(p	and	q	and	r)
	)
==	(!p	and	!q	or	p	and	q	and	r)
);
static_assert
(	(	(!p	and	!q	and	r)
	or	(p	and	q	and	r)
	)
==	(!p	and	!q	and	r	or	p	and	q	and	r)
);
static_assert
(	(	(!p	and	!q	and	!r)
	or	(p	and	q	and	r)
	)
==	(!p	and	!q	and	!r	or	p	and	q	and	r)
);

static_assert
(	(	(!p	and	r)
	or	(p	and	q	and	r)
	)
==	(!p	and	r	or	q	and	r)
);
static_assert
(	(	(!p	and	!r)
	or	(p	and	q	and	r)
	)
==	(!p	and	!r	or	p	and	q	and	r)
);

static_assert
(	(	(q	and	r)
	or	(p	and	q	and	r)
	)
==	(q	and	r)
);
static_assert
(	(	(q	and	!r)
	or	(p	and	q	and	r)
	)
==	(q	and	!r	or	p	and	q)
);

static_assert
(	(	(!q	and	r)
	or	(p	and	q	and	r)
	)
==	(!q	and	r	or	p	and	r)
);
static_assert
(	(	(!q	and	!r)
	or	(p	and	q	and	r)
	)
==	(!q	and	!r	or	p	and	q	and	r)
);
