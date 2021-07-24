#include "Shared.hpp"

static_assert
(	(T	or	T)
==	(T)
);
static_assert
(	(T	or	F)
==	(T)
);
static_assert
(	(T	or	p)
==	(T)
);

static_assert
(	(T	or	(p	and	q))
==	(T)
);
static_assert
(	(T	or	(p	and	(q	or	r)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	r))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(p	and	r)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(!p	and	!q)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(!p	and	r)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(q	and	r)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(!q	and	!p)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(!q	and	r)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	p)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	!p)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	q)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	!q)))
==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	s)))
==	(T)
);

static_assert
(	(T	or	(p	or	q))
==	(T)
);
static_assert
(	(T	or	(p	or	(q	and	r)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	r))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(p	or	r)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(!p	or	!q)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(!p	or	r)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(q	or	r)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(!q	or	!p)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(!q	or	r)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	p)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	!p)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	q)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	!q)))
==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	s)))
==	(T)
);
