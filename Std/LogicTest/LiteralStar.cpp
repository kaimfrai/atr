#include "Shared.hpp"

static_assert
(	(p	*	T)
==	(p)
);
static_assert
(	(p	*	F)
==	(F)
);
static_assert
(	(p	*	p)
==	(p)
);
static_assert
(	(p	*	!p)
==	(F)
);
static_assert
(	(p	*	q)
==	(p	and	q)
);

static_assert
(	(p	*	(p	and	q))
==	(p	and	q)
);
static_assert
(	(p	*	(p	and	(q	or	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	*	((p	and	q)	or	r))
==	(p	and	(q	or	r))
);
static_assert
(	(p	*	((p	and	q)	or	(p	and	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	*	((p	and	q)	or	(!p	and	!q)))
==	(p	and	q)
);
static_assert
(	(p	*	((p	and	q)	or	(!p	and	r)))
==	(p	and	q)
);
static_assert
(	(p	*	((p	and	q)	or	(q	and	r)))
==	(p	and	q)
);
static_assert
(	(p	*	((p	and	q)	or	(!q	and	!p)))
==	(p	and	q)
);
static_assert
(	(p	*	((p	and	q)	or	(!q	and	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	*	((p	and	q)	or	(r	and	p)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	*	((p	and	q)	or	(r	and	!p)))
==	(p	and	q)
);
static_assert
(	(p	*	((p	and	q)	or	(r	and	q)))
==	(p	and	q)
);
static_assert
(	(p	*	((p	and	q)	or	(r	and	!q)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	*	((p	and	q)	or	(r	and	s)))
==	(p	and	(q	or	r)	and	(q	or	s))
);


static_assert
(	(p	*	(p	or	q))
==	(p)
);
static_assert
(	(p	*	(p	or	(q	and	r)))
==	(p)
);
static_assert
(	(p	*	((p	or	q)	and	r))
==	(p	and	r)
);
static_assert
(	(p	*	((p	or	q)	and	(p	or	r)))
==	(p)
);
static_assert
(	(p	*	((p	or	q)	and	(!p	or	!q)))
==	(p	and	!q)
);
static_assert
(	(p	*	((p	or	q)	and	(!p	or	r)))
==	(p	and	r)
);
static_assert
(	(p	*	((p	or	q)	and	(q	or	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	*	((p	or	q)	and	(!q	or	!p)))
==	(p	and	!q)
);
static_assert
(	(p	*	((p	or	q)	and	(!q	or	r)))
==	(p	and	(!q	or	r))
);
static_assert
(	(p	*	((p	or	q)	and	(r	or	p)))
==	(p)
);
static_assert
(	(p	*	((p	or	q)	and	(r	or	!p)))
==	(p	and	r)
);
static_assert
(	(p	*	((p	or	q)	and	(r	or	q)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	*	((p	or	q)	and	(r	or	!q)))
==	(p	and	(!q	or	r))
);
static_assert
(	(p	*	((p	or	q)	and	(r	or	s)))
==	(p	and	(r	or	s))
);
