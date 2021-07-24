#include "Shared.hpp"

///	Literal
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
(	(p	and	!p)
==	(F)
);
static_assert
(	(p	and	q)
==	(p	and	q)
);

///	Conjunction 1 x 1
static_assert
(	(p	and	(p	and	q))
==	(p	and	q)
);
static_assert
(	(!p	and	(p	and	q))
==	(F)
);
static_assert
(	(q	and	(p	and	q))
==	(p	and	q)
);
static_assert
(	(!q	and	(p	and	q))
==	(F)
);
static_assert
(	(r	and	(p	and	q))
==	(p	and	q	and	r)
);

///	Conjunction 1 x 2
static_assert
(	(p	and	(p	and	(q	or	r)))
==	(p	and	(q	or	r))
);

///	Disjunction 2 x 1
static_assert
(	(p	and	((p	and	q)	or	r))
==	(p	and	(q	or	r))
);
static_assert
(	(!p	and	((p	and	q)	or	r))
==	(!p	and	r)
);
static_assert
(	(q	and	((p	and	q)	or	r))
==	((p	or	r)	and	q)
);
static_assert
(	(!q	and	((p	and	q)	or	r))
==	(!q	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	r))
==	(r)
);
static_assert
(	(!r	and	((p	and	q)	or	r))
==	(p	and	q	and	!r)
);
static_assert
(	(s	and	((p	and	q)	or	r))
==	((p	or	r)	and	(q	or	r)	and	s)
);

///	Disjunction 2 x 2
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
==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(q	and	r)))
==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	!p)))
==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	p)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!p)))
==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	q)))
==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!q)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	s)))
==	(p	and	(q	or	r)	and	(q	or	s))
);

///	Disjunction 1 x 1
static_assert
(	(p	and	(p	or	q))
==	(p)
);

///	Disjunction 1 x 2
static_assert
(	(p	and	(p	or	(q	and	r)))
==	(p)
);

///	Conjunction 2 x 1
static_assert
(	(p	and	((p	or	q)	and	r))
==	(p	and	r)
);

///	Conjunction 2 x 2
static_assert
(	(p	and	((p	or	q)	and	(p	or	r)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(!p	or	!q)))
==	(p	and	!q)
);
static_assert
(	(p	and	((p	or	q)	and	(!p	or	r)))
==	(p	and	r)
);
static_assert
(	(p	and	((p	or	q)	and	(q	or	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	!p)))
==	(p	and	!q)
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	r)))
==	(p	and	(!q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	p)))
==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!p)))
==	(p	and	r)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	q)))
==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!q)))
==	(p	and	(!q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	s)))
==	(p	and	(r	or	s))
);
