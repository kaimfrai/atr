#include "Shared.hpp"

///	Literal
static_assert
(	(p	or	p)	==	(p)
);

///	Conjunction 1 x 1
static_assert
(	(p	or	(p	and	q))	==	(p)
);
static_assert
(	(!p	or	(p	and	q))	==	(!p	or	q)
);

///	Conjunction 1 x 2
static_assert
(	(p	or	(p	and	(q	or	r)))	==	(p)
);

///	Conjunction 2 x 1
static_assert
(	(p	or	((p	or	q)	and	r))	==	(p	or	(q	and	r))
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(p	or	((p	or	q)	and	(!p	or	!q)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(!q	or	!p)))	==	(p	or	q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(p	or	((p	or	q)	and	(p	or	r)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	or	q)	and	(!p	or	r)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(q	or	r)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(!q	or	r)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	or	q)	and	(r	or	p)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	or	q)	and	(r	or	!p)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(r	or	q)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(r	or	!q)))	==	(p	or	(q	and	r))
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(p	or	((p	or	q)	and	(r	or	s)))	==	(p	or	(q	and	r)	or	(q	and	s))
);

///	Disjunction 1 x 1
static_assert
(	(p	or	(p	or	q))	==	(p	or	q)
);

///	Disjunction 1 x 2
static_assert
(	(p	or	(p	or	(q	and	r)))	==	(p	or	(q	and	r))
);

///	Disjunction 2 x 1
static_assert
(	(p	or	((p	and	q)	or	r))	==	(p	or	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(p	or	((p	and	q)	or	(!p	and	!q)))	==	(p	or	!q)
);
static_assert
(	(p	or	((p	and	q)	or	(!q	and	!p)))	==	(p	or	!q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(p	or	((p	and	q)	or	(p	and	r)))	==	(p)
);
static_assert
(	(p	or	((p	and	q)	or	(!p	and	r)))	==	(p	or	r)
);
static_assert
(	(p	or	((p	and	q)	or	(q	and	r)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	and	q)	or	(!q	and	r)))	==	(p	or	(!q	and	r))
);
static_assert
(	(p	or	((p	and	q)	or	(r	and	p)))	==	(p)
);
static_assert
(	(p	or	((p	and	q)	or	(r	and	!p)))	==	(p	or	r)
);
static_assert
(	(p	or	((p	and	q)	or	(r	and	q)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	and	q)	or	(r	and	!q)))	==	(p	or	(!q	and	r))
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(p	or	((p	and	q)	or	(r	and	s)))	==	(p	or	(r	and	s))
);
