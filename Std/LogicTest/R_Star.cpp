#include "Shared.hpp"

///	Conjunction 1 x 2
static_assert
(	(r	*	(p	and	(q	or	r)))	==	(p	and	r)
);

///	Conjunction 2 x 1
static_assert
(	(r	*	((p	or	q)	and	r))	==	((p	or	q)	and	r)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(r	*	((p	or	q)	and	(p	or	r)))	==	((p	or	q)	and	r)
);
static_assert
(	(r	*	((p	or	q)	and	(!p	or	r)))	==	((p	or	q)	and	r)
);
static_assert
(	(r	*	((p	or	q)	and	(q	or	r)))	==	((p	or	q)	and	r)
);
static_assert
(	(r	*	((p	or	q)	and	(!q	or	r)))	==	((p	or	q)	and	r)
);
static_assert
(	(r	*	((p	or	q)	and	(r	or	p)))	==	((p	or	q)	and	r)
);
static_assert
(	(r	*	((p	or	q)	and	(r	or	!p)))	==	((p	or	q)	and	r)
);
static_assert
(	(r	*	((p	or	q)	and	(r	or	q)))	==	((p	or	q)	and	r)
);
static_assert
(	(r	*	((p	or	q)	and	(r	or	!q)))	==	((p	or	q)	and	r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(r	*	((p	or	q)	and	(r	or	s)))	==	((p	or	q)	and	r)
);

///	Disjunction 1 x 2
static_assert
(	(r	*	(p	or	(q	and	r)))	==	((p	or	q)	and	r)
);

///	Disjunction 2 x 1
static_assert
(	(r	*	((p	and	q)	or	r))	==	(r)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(r	*	((p	and	q)	or	(p	and	r)))	==	(p	and	r)
);
static_assert
(	(r	*	((p	and	q)	or	(!p	and	r)))	==	((!p or	q)	and	r)
);
static_assert
(	(r	*	((p	and	q)	or	(q	and	r)))	==	(q	and	r)
);
static_assert
(	(r	*	((p	and	q)	or	(!q	and	r)))	==	((p	or	!q)	and	r)
);
static_assert
(	(r	*	((p	and	q)	or	(r	and	p)))	==	(p	and	r)
);
static_assert
(	(r	*	((p	and	q)	or	(r	and	!p)))	==	((!p or	q)	and	r)
);
static_assert
(	(r	*	((p	and	q)	or	(r	and	q)))	==	(q	and	r)
);
static_assert
(	(r	*	((p	and	q)	or	(r	and	!q)))	==	((p	or	!q)	and	r)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(r	*	((p	and	q)	or	(r	and	s)))	==	((p	or	s)	and	(q	or	s)	and	r)
);
