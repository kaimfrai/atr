#include "Shared.hpp"

/// ****************************************************************************
///	(p)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(p)
	)
==	(p	and	q)
);
static_assert
(	(	(!p	and	q)
	and	(p)
	)
==	(F)
);
static_assert
(	(	(q	and	r)
	and	(p)
	)
==	(q	and	r	and	p)
);

static_assert
(	(	(p	and	q	and	r)
	and	(p)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(p)
	)
==	(F)
);

/// ****************************************************************************
///	(!p)
/// ****************************************************************************
static_assert
(	(	(p	and	q)
	and	(!p)
	)
==	(F)
);
static_assert
(	(	(!p	and	q)
	and	(!p)
	)
==	(!p	and	q)
);
static_assert
(	(	(q	and	r)
	and	(!p)
	)
==	(q	and	r	and	!p)
);

static_assert
(	(	(p	and	q	and	r)
	and	(!p)
	)
==	(F)
);
static_assert
(	(	(!p	and	q	and	r)
	and	(!p)
	)
==	(!p	and	q	and	r)
);
