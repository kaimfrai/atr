#include "Shared.hpp"

///	Conjunction 1 x 1
static_assert
(	(!q	or	(p	and	q))	==	(p	or	!q)
);

///	Conjunction 1 x 2
static_assert
(	(!q	or	(p	and	(q	or	r)))	==	(p	or	!q)
);

///	Conjunction 2 x 1
static_assert
(	(!q	or	((p	or	q)	and	r))	==	(!q	or	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(!q	or	((p	or	q)	and	(!p	or	!q)))	==	(!p	or	!q)
);
static_assert
(	(!q	or	((p	or	q)	and	(!q	or	!p)))	==	(!p	or	!q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(!q	or	((p	or	q)	and	(p	or	r)))	==	(p	or	!q	or	r)
);
static_assert
(	(!q	or	((p	or	q)	and	(!p	or	r)))	==	(!p	or	!q	or	r)
);
static_assert
(	(!q	or	((p	or	q)	and	(q	or	r)))	==	(T)
);
static_assert
(	(!q	or	((p	or	q)	and	(!q	or	r)))	==	(!q	or	r)
);
static_assert
(	(!q	or	((p	or	q)	and	(r	or	p)))	==	(p	or	!q	or	r)
);
static_assert
(	(!q	or	((p	or	q)	and	(r	or	!p)))	==	(!p	or	!q	or	r)
);
static_assert
(	(!q	or	((p	or	q)	and	(r	or	q)))	==	(T)
);
static_assert
(	(!q	or	((p	or	q)	and	(r	or	!q)))	==	(!q	or	r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(!q	or	((p	or	q)	and	(r	or	s)))	==	(!q	or	r	or	s)
);

///	Disjunction 1 x 1
static_assert
(	(!q	or	(p	or	q))	==	(T)
);

///	Disjunction 1 x 2
static_assert
(	(!q	or	(p	or	(q	and	r)))	==	(p	or	!q	or	r)
);

///	Disjunction 2 x 1
static_assert
(	(!q	or	((p	and	q)	or	r))	==	(p	or	!q	or	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(!q	or	((p	and	q)	or	(!p	and	!q)))	==	(p	or	!q)
);
static_assert
(	(!q	or	((p	and	q)	or	(!q	and	!p)))	==	(p	or	!q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(!q	or	((p	and	q)	or	(p	and	r)))	==	(p	or	!q)
);
static_assert
(	(!q	or	((p	and	q)	or	(!p	and	r)))	==	(p	or	!q	or	r)
);
static_assert
(	(!q	or	((p	and	q)	or	(q	and	r)))	==	(p	or	!q	or	r)
);
static_assert
(	(!q	or	((p	and	q)	or	(!q	and	r)))	==	(p	or	!q)
);
static_assert
(	(!q	or	((p	and	q)	or	(r	and	p)))	==	(p	or	!q)
);
static_assert
(	(!q	or	((p	and	q)	or	(r	and	!p)))	==	(p	or	!q	or	r)
);
static_assert
(	(!q	or	((p	and	q)	or	(r	and	q)))	==	(p	or	!q	or	r)
);
static_assert
(	(!q	or	((p	and	q)	or	(r	and	!q)))	==	(p	or	!q)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(!q	or	((p	and	q)	or	(r	and	s)))	==	(p	or	!q	or	(r	and	s))
);
