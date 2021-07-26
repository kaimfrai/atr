#include "Shared.hpp"

///	Constant
static_assert
(	(T	*	T)	==	(T)
);
static_assert
(	(T	*	F)	==	(F)
);

///	Literal
static_assert
(	(T	*	p)	==	(p)
);

///	Conjunction 1 x 1
static_assert
(	(T	*	(p	and	q))	==	(p	and	q)
);

///	Conjunction 1 x 2
static_assert
(	(T	*	(p	and	(q	or	r)))	==	(p	and	(q	or	r))
);

///	Conjunction 2 x 1
static_assert
(	(T	*	((p	or	q)	and	r))	==	((p	or	q)	and	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(T	*	((p	or	q)	and	(!p	or	!q)))	==	((p	or	q)	and	(!p	or	!q))
);
static_assert
(	(T	*	((p	or	q)	and	(!q	or	!p)))	==	((p	or	q)	and	(!p	or	!q))
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(T	*	((p	or	q)	and	(p	or	r)))	==	((p	or	q)	and	(p	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(!p	or	r)))	==	((p	or	q)	and	(!p	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(q	or	r)))	==	((p	or	q)	and	(q	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(!q	or	r)))	==	((p	or	q)	and	(!q	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	p)))	==	((p	or	q)	and	(p	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	!p)))	==	((p	or	q)	and	(!p	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	q)))	==	((p	or	q)	and	(q	or	r))
);
static_assert
(	(T	*	((p	or	q)	and	(r	or	!q)))	==	((p	or	q)	and	(!q	or	r))
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(T	*	((p	or	q)	and	(r	or	s)))	==	((p	or	q)	and	(r	or	s))
);

///	Disjunction 1 x 1
static_assert
(	(T	*	(p	or	q))	==	(p	or	q)
);

///	Disjunciton 1 x 2
static_assert
(	(T	*	(p	or	(q	and	r)))	==	(p	or	(q	and	r))
);

///	Disjunciton 1 x 2
static_assert
(	(T	*	((p	and	q)	or	r))	==	((p	and	q)	or	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(T	*	((p	and	q)	or	(!p	and	!q)))	==	((p	and	q)	or	(!p	and	!q))
);
static_assert
(	(T	*	((p	and	q)	or	(!q	and	!p)))	==	((p	and	q)	or	(!q	and	!p))
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(T	*	((p	and	q)	or	(p	and	r)))	==	((p	and	q)	or	(p	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(!p	and	r)))	==	((p	and	q)	or	(!p	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(q	and	r)))	==	((p	and	q)	or	(q	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(!q	and	r)))	==	((p	and	q)	or	(!q	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	p)))	==	((p	and	q)	or	(p	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	!p)))	==	((p	and	q)	or	(!p	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	q)))	==	((p	and	q)	or	(q	and	r))
);
static_assert
(	(T	*	((p	and	q)	or	(r	and	!q)))	==	((p	and	q)	or	(!q	and	r))
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(T	*	((p	and	q)	or	(r	and	s)))	==	((p	and	q)	or	(r	and	s))
);
