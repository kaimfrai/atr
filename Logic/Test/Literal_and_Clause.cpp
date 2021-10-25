#include "Shared.hpp"

/// ****************************************************************************
///	(p	and	q)
/// ****************************************************************************
static_assert
(	(	(p)
	and	(p	and	q)
	)
==	(p	and	q)
);
static_assert
(	(	(!p)
	and	(p	and	q)
	)
==	(F)
);

static_assert
(	(	(q)
	and	(p	and	q)
	)
==	(q	and	p)
);
static_assert
(	(	(!q)
	and	(p	and	q)
	)
==	(F)
);

static_assert
(	(	(r)
	and	(p	and	q)
	)
==	(r	and	p	and	q)
);

/// ****************************************************************************
///	(p	and	q	and	r)
/// ****************************************************************************
static_assert
(	(	(p)
	and	(p	and	q	and	r)
	)
==	(p	and	q	and	r)
);
static_assert
(	(	(!p)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(q)
	and	(p	and	q	and	r)
	)
==	(q	and	p	and	r)
);
static_assert
(	(	(!q)
	and	(p	and	q	and	r)
	)
==	(F)
);

static_assert
(	(	(r)
	and	(p	and	q	and	r)
	)
==	(r	and	p	and	q)
);
static_assert
(	(	(!r)
	and	(p	and	q	and	r)
	)
==	(F)
);
