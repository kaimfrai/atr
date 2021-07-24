#include "Shared.hpp"

static_assert
(	(p	and	T)
==	(p)
);
static_assert
(	(p	and	F)
==	(F)
);
static_assert
(	(p	and	p)
==	(p)
);

static_assert
(	(p	and	(p	and	q))
==	(p	and	q)
);
static_assert
(	(p	and	(p	and	(q	or	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	r))
==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(p	and	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(!p	and	!q)))
==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!p	and	r)))
==	(p	and	q	and	r)
);
static_assert
(	(p	and	((p	and	q)	or	(q	and	r)))
==	(p	and	q	and	r)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	!p)))
==	(p)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	r)))
==	(F)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	p)))
==	(F)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!p)))
==	(F)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	q)))
==	(F)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!q)))
==	(F)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	s)))
==	(F)
);

static_assert
(	(p	and	(p	or	q))
==	(p)
);
static_assert
(	(p	and	(p	or	(q	and	r)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	r))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(p	or	r)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(!p	or	!q)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(!p	or	r)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(q	or	r)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	!p)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	r)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	p)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!p)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	q)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!q)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	s)))
==	(p)
);
