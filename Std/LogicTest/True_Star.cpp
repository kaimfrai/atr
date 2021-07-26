#include "Shared.hpp"

static_assert
(	(T	*	T)
==	(T)
);
static_assert
(	(T	*	F)
==	(F)
);
static_assert
(	(T	*	p)
==	(p)
);

static_assert
(	(T	*	(p	and	q))
==	(p	and	q)
);
static_assert
(	(T	*	(p	and	(q	or	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(T	*	((p	and	q)	or	r))
==	((p	and	q)	or	r)
);
static_assert
(	(T	*	((p	and	q)	or	(p	and	r)))
==	((p	and	q)	or	(p	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(!p	and	!q)))
==	((p	and	q)	or	(!p	and	!q))
);
static_assert
(	(T	*	((p	and	q)	or	(!p	and	r)))
==	((p	and	q)	or	(!p	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(q	and	r)))
==	((p	and	q)	or	(q	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(!q	and	!p)))
==	((p	and	q)	or	(!q	and	!p))
);
static_assert
(	(T	*	((p	and	q)	or	(!q	and	r)))
==	((p	and	q)	or	(!q	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	p)))
==	((p	and	q)	or	(p	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	!p)))
==	((p	and	q)	or	(!p	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	q)))
==	((p	and	q)	or	(q	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	!q)))
==	((p	and	q)	or	(!q	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	s)))
==	((p	and	q)	or	(r	and	s))
);

static_assert
(	(T	*	(p	or	q))
==	(p	or	q)
);
static_assert
(	(T	*	(p	or	(q	and	r)))
==	(p	or	(q	and	r))
);
static_assert
(	(T	*	((p	or	q)	and	r))
==	((p	or	q)	and	r)
);
static_assert
(	(T	*	((p	or	q)	and	(p	or	r)))
==	((p	or	q)	and	(p	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(!p	or	!q)))
==	((p	or	q)	and	(!p	or	!q))
);
static_assert
(	(T	*	((p	or	q)	and	(!p	or	r)))
==	((p	or	q)	and	(!p	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(q	or	r)))
==	((p	or	q)	and	(q	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(!q	or	!p)))
==	((p	or	q)	and	(!p	or	!q))
);
static_assert
(	(T	*	((p	or	q)	and	(!q	or	r)))
==	((p	or	q)	and	(!q	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	p)))
==	((p	or	q)	and	(p	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	!p)))
==	((p	or	q)	and	(!p	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	q)))
==	((p	or	q)	and	(q	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	!q)))
==	((p	or	q)	and	(!q	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	s)))
==	((p	or	q)	and	(r	or	s))
);
