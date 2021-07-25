#include "Shared.hpp"

///	Literal
static_assert
(	(p	and	p)	==	(p)
);
static_assert
(	(p	and	!p)	==	(F)
);

///	Conjunction 1 x 1
static_assert
(	(p	and	(p	and	q))	==	(p	and	q)
);

///	Conjunction 1 x 2
static_assert
(	(p	and	(p	and	(q	or	r)))	==	(p	and	(q	or	r))
);

///	Conjunction 2 x 1
static_assert
(	(p	and	((p	or	q)	and	r))	==	(p	and	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(p	and	((p	or	q)	and	(!p	or	!q)))	==	(p	and	!q)
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	!p)))	==	(p	and	!q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(p	and	((p	or	q)	and	(p	or	r)))	==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(!p	or	r)))	==	(p	and	r)
);
static_assert
(	(p	and	((p	or	q)	and	(q	or	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	r)))	==	(p	and	(!q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	p)))	==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!p)))	==	(p	and	r)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	q)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!q)))	==	(p	and	(!q	or	r))
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(p	and	((p	or	q)	and	(r	or	s)))	==	(p	and	(r	or	s))
);

///	Disjunction 1 x 1
static_assert
(	(p	and	(p	or	q))	==	(p)
);
static_assert
(	(!p	and	(p	or	q))	==	(!p	and	q)
);

///	Disjunction 1 x 2
static_assert
(	(p	and	(p	or	(q	and	r)))	==	(p)
);

///	Disjunction 2 x 1
static_assert
(	(p	and	((p	and	q)	or	r))	==	(p	and	(q	or	r))
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(p	and	((p	and	q)	or	(!p	and	!q)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	!p)))	==	(p	and	q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(p	and	((p	and	q)	or	(p	and	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(!p	and	r)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(q	and	r)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	p)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!p)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	q)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!q)))	==	(p	and	(q	or	r))
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(p	and	((p	and	q)	or	(r	and	s)))	==	(p	and	(q	or	r)	and	(q	or	s))
);
