#include "Shared.hpp"

///	Literal
static_assert
(	(!p	*	p)	==	(F)
);

///	Conjunction 1 x 1
static_assert
(	(!p	*	(p	and	q))	==	(F)
);

///	Conjunction 1 x 2
static_assert
(	(!p	*	(p	and	(q	or	r)))	==	(F)
);

///	Conjunction 2 x 1
static_assert
(	(!p	*	((p	or	q)	and	r))	==	(!p	and	q	and	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(!p	*	((p	or	q)	and	(!p	or	!q)))	==	(!p	and	q)
);
static_assert
(	(!p	*	((p	or	q)	and	(!q	or	!p)))	==	(!p	and	q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(!p	*	((p	or	q)	and	(p	or	r)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	*	((p	or	q)	and	(!p	or	r)))	==	(!p	and	q)
);
static_assert
(	(!p	*	((p	or	q)	and	(q	or	r)))	==	(!p	and	q)
);
static_assert
(	(!p	*	((p	or	q)	and	(!q	or	r)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	*	((p	or	q)	and	(r	or	p)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	*	((p	or	q)	and	(r	or	!p)))	==	(!p	and	q)
);
static_assert
(	(!p	*	((p	or	q)	and	(r	or	q)))	==	(!p	and	q)
);
static_assert
(	(!p	*	((p	or	q)	and	(r	or	!q)))	==	(!p	and	q	and	r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(!p	*	((p	or	q)	and	(r	or	s)))	==	(!p	and	q	and	(r	or	s))
);

///	Disjunction 1 x 1
static_assert
(	(!p	*	(p	or	q))	==	(!p	and	q)
);

///	Disjunction 1 x 2
static_assert
(	(!p	*	(p	or	(q	and	r)))	==	(!p	and	q	and	r)
);

///	Disjunction 2 x 1
static_assert
(	(!p	*	((p	and	q)	or	r))	==	(!p	and	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(!p	*	((p	and	q)	or	(!p	and	!q)))	==	(!p	and	!q)
);
static_assert
(	(!p	*	((p	and	q)	or	(!q	and	!p)))	==	(!p	and	!q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(!p	*	((p	and	q)	or	(p	and	r)))	==	(F)
);
static_assert
(	(!p	*	((p	and	q)	or	(!p	and	r)))	==	(!p	and	r)
);
static_assert
(	(!p	*	((p	and	q)	or	(q	and	r)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	*	((p	and	q)	or	(!q	and	r)))	==	(!p	and	!q	and	r)
);
static_assert
(	(!p	*	((p	and	q)	or	(r	and	p)))	==	(F)
);
static_assert
(	(!p	*	((p	and	q)	or	(r	and	!p)))	==	(!p	and	r)
);
static_assert
(	(!p	*	((p	and	q)	or	(r	and	q)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	*	((p	and	q)	or	(r	and	!q)))	==	(!p	and	!q	and	r)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(!p	*	((p	and	q)	or	(r	and	s)))	==	(!p	and	r	and	s)
);
