#include "Shared.hpp"

///	Conjunction 1 x 2
static_assert
(	(r	or	(p	and	(q	or	r)))	==	((p	and	q)	or	r)
);

///	Conjunction 2 x 1
static_assert
(	(r	or	((p	or	q)	and	r))	==	(r)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(r	or	((p	or	q)	and	(p	or	r)))	==	(p	or	r)
);
static_assert
(	(r	or	((p	or	q)	and	(!p	or	r)))	==	((!p and	q)	or	r)
);
static_assert
(	(r	or	((p	or	q)	and	(q	or	r)))	==	(q	or	r)
);
static_assert
(	(r	or	((p	or	q)	and	(!q	or	r)))	==	((p	and	!q)	or	r)
);
static_assert
(	(r	or	((p	or	q)	and	(r	or	p)))	==	(p	or	r)
);
static_assert
(	(r	or	((p	or	q)	and	(r	or	!p)))	==	((!p and	q)	or	r)
);
static_assert
(	(r	or	((p	or	q)	and	(r	or	q)))	==	(q	or	r)
);
static_assert
(	(r	or	((p	or	q)	and	(r	or	!q)))	==	((p	and	!q)	or	r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(r	or	((p	or	q)	and	(r	or	s)))	==	((p	and	s)	or	(q	and	s)	or	r)
);

///	Disjunction 1 x 2
static_assert
(	(r	or	(p	or	(q	and	r)))	==	(p	or	r)
);

///	Disjunction 2 x 1
static_assert
(	(r	or	((p	and	q)	or	r))	==	((p	and	q)	or	r)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(r	or	((p	and	q)	or	(p	and	r)))	==	((p	and	q)	or	r)
);
static_assert
(	(r	or	((p	and	q)	or	(!p	and	r)))	==	((p	and	q)	or	r)
);
static_assert
(	(r	or	((p	and	q)	or	(q	and	r)))	==	((p	and	q)	or	r)
);
static_assert
(	(r	or	((p	and	q)	or	(!q	and	r)))	==	((p	and	q)	or	r)
);
static_assert
(	(r	or	((p	and	q)	or	(r	and	p)))	==	((p	and	q)	or	r)
);
static_assert
(	(r	or	((p	and	q)	or	(r	and	!p)))	==	((p	and	q)	or	r)
);
static_assert
(	(r	or	((p	and	q)	or	(r	and	q)))	==	((p	and	q)	or	r)
);
static_assert
(	(r	or	((p	and	q)	or	(r	and	!q)))	==	((p	and	q)	or	r)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(r	or	((p	and	q)	or	(r	and	s)))	==	((p	and	q)	or	r)
);
