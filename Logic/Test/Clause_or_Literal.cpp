#include "Shared.hpp"

/// ****************************************************************************
///	(p)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	or	(p)
	)
==	(p)
);
static_assert
(	(	(!p	and	q)
	or	(p)
	)
==	(q
	or	(p)
	)
);
static_assert
(	(	(q	and	r)
	or	(p)
	)
==	(q	and	r
	or	(p)
	)
);

static_assert
(	(	(p	and	q	and	r)
	or	(p)
	)
==	(p)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(p)
	)
==	(q	and	r
	or	(p)
	)
);

/// ****************************************************************************
///	(!p)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	or	(!p)
	)
==	(q
	or	(!p)
	)
);
static_assert
(	(	(!p	and	q)
	or	(!p)
	)
==	(!p)
);
static_assert
(	(	(q	and	r)
	or	(!p)
	)
==	(q	and	r
	or	(!p)
	)
);

static_assert
(	(	(p	and	q	and	r)
	or	(!p)
	)
==	(q	and	r
	or	(!p)
	)
);
static_assert
(	(	(!p	and	q	and	r)
	or	(!p)
	)
==	(!p)
);
