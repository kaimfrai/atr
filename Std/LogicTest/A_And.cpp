#include "Shared.hpp"

///	Constant
static_assert
(	(a	and	T)	==	(a)
);
static_assert
(	(a	and	F)	==	(F)
);

///	Literal
static_assert
(	(a	and	p)	==	(a	and	p)
);
static_assert
(	(a	and	!p)	==	(a	and	!p)
);

///	Conjunction 1 x 1
static_assert
(	(a	and	(p	and	q))	==	(a	and	p	and	q)
);

///	Conjunction 1 x 2
static_assert
(	(a	and	(p	and	(q	or	r)))	==	(a	and	p	and	(q	or	r))
);

///	Conjunction 2 x 1
static_assert
(	(a	and	((p	or	q)	and	r))	==	(a	and	(p	or	q)	and	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(a	and	((p	or	q)	and	(!p	or	!q)))	==	(a	and	(p	or	q)	and	(!p	or	!q))
);
static_assert
(	(a	and	((p	or	q)	and	(!q	or	!p)))	==	(a	and	(p	or	q)	and	(!q	or	!p))
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(a	and	((p	or	q)	and	(p	or	r)))	==	(a	and	(p	or	q)	and	(p	or	r))
);
static_assert
(	(a	and	((p	or	q)	and	(!p	or	r)))	==	(a	and	(p	or	q)	and	(!p	or	r))
);
static_assert
(	(a	and	((p	or	q)	and	(q	or	r)))	==	(a	and	(p	or	q)	and	(q	or	r))
);
static_assert
(	(a	and	((p	or	q)	and	(!q	or	r)))	==	(a	and	(p	or	q)	and	(!q	or	r))
);
static_assert
(	(a	and	((p	or	q)	and	(r	or	p)))	==	(a	and	(p	or	q)	and	(r	or	p))
);
static_assert
(	(a	and	((p	or	q)	and	(r	or	!p)))	==	(a	and	(p	or	q)	and	(r	or	!p))
);
static_assert
(	(a	and	((p	or	q)	and	(r	or	q)))	==	(a	and	(p	or	q)	and	(r	or	q))
);
static_assert
(	(a	and	((p	or	q)	and	(r	or	!q)))	==	(a	and	(p	or	q)	and	(r	or	!q))
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(a	and	((p	or	q)	and	(r	or	s)))	==	(a	and	(p	or	q)	and	(r	or	s))
);

///	Disjunction 1 x 1
static_assert
(	(a	and	(p	or	q))	==	(a	and	(p	or	q))
);

///	Disjunction 1 x 2
static_assert
(	(a	and	(p	or	(q	and	r)))	==	(a	and	(p	or	q)	and	(p	or	r))
);

///	Disjunction 2 x 1
static_assert
(	(a	and	((p	and	q)	or	r))	==	(a	and	(p	or	r)	and	(q	or	r))
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(a	and	((p	and	q)	or	(!p	and	!q)))	==	(a	and	(p	or	!q)	and	(!p	or	q))
);
static_assert
(	(a	and	((p	and	q)	or	(!q	and	!p)))	==	(a	and	(p	or	!q)	and	(!p	or	q))
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(a	and	((p	and	q)	or	(p	and	r)))	==	(a	and	p	and	(q	or	r))
);
static_assert
(	(a	and	((p	and	q)	or	(!p	and	r)))	==	(a	and	(p	or	r)	and	(!p	or	q))
);
static_assert
(	(a	and	((p	and	q)	or	(q	and	r)))	==	(a	and	(p	or	r)	and	q)
);
static_assert
(	(a	and	((p	and	q)	or	(!q	and	r)))	==	(a	and	(p	or	!q)	and	(q	or	r))
);
static_assert
(	(a	and	((p	and	q)	or	(r	and	p)))	==	(a	and	p	and	(q	or	r))
);
static_assert
(	(a	and	((p	and	q)	or	(r	and	!p)))	==	(a	and	(p	or	r)	and	(!p	or	q))
);
static_assert
(	(a	and	((p	and	q)	or	(r	and	q)))	==	(a	and	(p	or	r)	and	q)
);
static_assert
(	(a	and	((p	and	q)	or	(r	and	!q)))	==	(a	and	(p	or	!q)	and	(q	or	r))
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(a	and	((p	and	q)	or	(r	and	s)))	==	(a	and	(p	or	r)	and	(p	or	s)	and	(q	or	r)	and	(q	or	s))
);
