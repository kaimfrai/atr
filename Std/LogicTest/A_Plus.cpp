#include "Shared.hpp"

///	Constant
static_assert
(	(a	+	T)	==	(T)
);
static_assert
(	(a	+	F)	==	(a)
);

///	Literal
static_assert
(	(a	+	p)	==	(a	or	p)
);

///	Conjunction 1 x 1
static_assert
(	(a	+	(p	and	q))	==	(a	or	(p	and	q))
);

///	Conjunction 1 x 2
static_assert
(	(a	+	(p	and	(q	or	r)))	==	(a	or	(p	and	q)	or	(p	and	r))
);

///	Conjunction 2 x 1
static_assert
(	(a	+	((p	or	q)	and	r))	==	(a	or	(p	and	r)	or	(q	and	r))
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(a	+	((p	or	q)	and	(!p	or	!q)))	==	(a	or	(p	and	!q)	or	(!p	and	q))
);
static_assert
(	(a	+	((p	or	q)	and	(!q	or	!p)))	==	(a	or	(p	and	!q)	or	(!p	and	q))
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(a	+	((p	or	q)	and	(p	or	r)))	==	(a	or	p	or	(q	and	r))
);
static_assert
(	(a	+	((p	or	q)	and	(!p	or	r)))	==	(a	or	(p	and	r)	or	(!p	and	q))
);
static_assert
(	(a	+	((p	or	q)	and	(q	or	r)))	==	(a	or	(p	and	r)	or	q)
);
static_assert
(	(a	+	((p	or	q)	and	(!q	or	r)))	==	(a	or	(p	and	!q)	or	(q	and	r))
);
static_assert
(	(a	+	((p	or	q)	and	(r	or	p)))	==	(a	or	p	or	(q	and	r))
);
static_assert
(	(a	+	((p	or	q)	and	(r	or	!p)))	==	(a	or	(p	and	r)	or	(!p	and	q))
);
static_assert
(	(a	+	((p	or	q)	and	(r	or	q)))	==	(a	or	(p	and	r)	or	q)
);
static_assert
(	(a	+	((p	or	q)	and	(r	or	!q)))	==	(a	or	(p	and	!q)	or	(q	and	r))
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(a	+	((p	or	q)	and	(r	or	s)))	==	(a	or	(p	and	r)	or	(p	and	s)	or	(q	and	r)	or	(q	and	s))
);

///	Disjunction 1 x 1
static_assert
(	(a	+	(p	or	q))	==	(a	or	p	or	q)
);

///	Disjunction 1 x 2
static_assert
(	(a	+	(p	or	(q	and	r)))	==	(a	or	p	or	(q	and	r))
);

///	Disjunction 2 x 1
static_assert
(	(a	+	((p	and	q)	or	r))	==	(a	or	(p	and	q)	or	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(a	+	((p	and	q)	or	(!p	and	!q)))	==	(a	or	(p	and	q)	or	(!p	and	!q))
);
static_assert
(	(a	+	((p	and	q)	or	(!q	and	!p)))	==	(a	or	(p	and	q)	or	(!q	and	!p))
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(a	+	((p	and	q)	or	(p	and	r)))	==	(a	or	(p	and	q)	or	(p	and	r))
);
static_assert
(	(a	+	((p	and	q)	or	(!p	and	r)))	==	(a	or	(p	and	q)	or	(!p	and	r))
);
static_assert
(	(a	+	((p	and	q)	or	(q	and	r)))	==	(a	or	(p	and	q)	or	(q	and	r))
);
static_assert
(	(a	+	((p	and	q)	or	(!q	and	r)))	==	(a	or	(p	and	q)	or	(!q	and	r))
);
static_assert
(	(a	+	((p	and	q)	or	(r	and	p)))	==	(a	or	(p	and	q)	or	(r	and	p))
);
static_assert
(	(a	+	((p	and	q)	or	(r	and	!p)))	==	(a	or	(p	and	q)	or	(r	and	!p))
);
static_assert
(	(a	+	((p	and	q)	or	(r	and	q)))	==	(a	or	(p	and	q)	or	(r	and	q))
);
static_assert
(	(a	+	((p	and	q)	or	(r	and	!q)))	==	(a	or	(p	and	q)	or	(r	and	!q))
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(a	+	((p	and	q)	or	(r	and	s)))	==	(a	or	(p	and	q)	or	(r	and	s))
);
