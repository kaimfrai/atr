#include "Shared.hpp"

///	Constant
static_assert
(	(T	or	T)	==	(T)
);
static_assert
(	(T	or	F)	==	(T)
);

///	Literal
static_assert
(	(T	or	p)	==	(T)
);

///	Conjunction 1 x 1
static_assert
(	(T	or	(p	and	q))	==	(T)
);

///	Conjunction 1 x 2
static_assert
(	(T	or	(p	and	(q	or	r)))	==	(T)
);

///	Conjunction 2 x 1
static_assert
(	(T	or	((p	or	q)	and	r))	==	(T)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(T	or	((p	or	q)	and	(!p	or	!q)))	==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(!q	or	!p)))	==	(T)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(T	or	((p	or	q)	and	(p	or	r)))	==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(!p	or	r)))	==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(q	or	r)))	==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(!q	or	r)))	==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	p)))	==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	!p)))	==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	q)))	==	(T)
);
static_assert
(	(T	or	((p	or	q)	and	(r	or	!q)))	==	(T)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(T	or	((p	or	q)	and	(r	or	s)))	==	(T)
);

///	Disjunction 1 x 1
static_assert
(	(T	or	(p	or	q))	==	(T)
);

///	Disjunciton 1 x 2
static_assert
(	(T	or	(p	or	(q	and	r)))	==	(T)
);

///	Disjunciton 1 x 2
static_assert
(	(T	or	((p	and	q)	or	r))	==	(T)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(T	or	((p	and	q)	or	(!p	and	!q)))	==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(!q	and	!p)))	==	(T)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(T	or	((p	and	q)	or	(p	and	r)))	==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(!p	and	r)))	==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(q	and	r)))	==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(!q	and	r)))	==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	p)))	==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	!p)))	==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	q)))	==	(T)
);
static_assert
(	(T	or	((p	and	q)	or	(r	and	!q)))	==	(T)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(T	or	((p	and	q)	or	(r	and	s)))	==	(T)
);
