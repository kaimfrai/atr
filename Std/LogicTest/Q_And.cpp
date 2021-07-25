#include "Shared.hpp"

///	Conjunction 1 x 1
static_assert
(	(q	and	(p	and	q))	==	(p	and	q)
);

///	Conjunction 1 x 2
static_assert
(	(q	and	(p	and	(q	or	r)))	==	(p	and	q)
);

///	Conjunction 2 x 1
static_assert
(	(q	and	((p	or	q)	and	r))	==	(q	and	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(q	and	((p	or	q)	and	(!p	or	!q)))	==	(!p	and	q)
);
static_assert
(	(q	and	((p	or	q)	and	(!q	or	!p)))	==	(!p	and	q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(q	and	((p	or	q)	and	(p	or	r)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	or	q)	and	(!p	or	r)))	==	((!p or	r)	and	q)
);
static_assert
(	(q	and	((p	or	q)	and	(q	or	r)))	==	(q)
);
static_assert
(	(q	and	((p	or	q)	and	(!q	or	r)))	==	(q	and	r)
);
static_assert
(	(q	and	((p	or	q)	and	(r	or	p)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	or	q)	and	(r	or	!p)))	==	((!p	or	r)	and	q)
);
static_assert
(	(q	and	((p	or	q)	and	(r	or	q)))	==	(q)
);
static_assert
(	(q	and	((p	or	q)	and	(r	or	!q)))	==	(q	and	r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(q	and	((p	or	q)	and	(r	or	s)))	==	(q	and	(r	or	s))
);

///	Disjunction 1 x 1
static_assert
(	(q	and	(p	or	q))	==	(q)
);

///	Disjunction 1 x 2
static_assert
(	(q	and	(p	or	(q	and	r)))	==	((p	or	r)	and	q)
);

///	Disjunction 2 x 1
static_assert
(	(q	and	((p	and	q)	or	r))	==	((p	or	r)	and	q)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(q	and	((p	and	q)	or	(!p	and	!q)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(!q	and	!p)))	==	(p	and	q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(q	and	((p	and	q)	or	(p	and	r)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(!p	and	r)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(q	and	r)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(!q	and	r)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	p)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	!p)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	q)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	!q)))	==	(p	and	q)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(q	and	((p	and	q)	or	(r	and	s)))	==	((p	or	r)	and	(p	or	s)	and	q)
);
