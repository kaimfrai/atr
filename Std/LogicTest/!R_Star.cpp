#include "Shared.hpp"

///	Conjunction 1 x 2
static_assert
(	(!r	*	(p	and	(q	or	r)))	==	(p	and	q	and	!r)
);

///	Conjunction 2 x 1
static_assert
(	(!r	*	((p	or	q)	and	r))	==	(F)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(!r	*	((p	or	q)	and	(p	or	r)))	==	(p	and	!r)
);
static_assert
(	(!r	*	((p	or	q)	and	(!p	or	r)))	==	(!p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	or	q)	and	(q	or	r)))	==	(q	and	!r)
);
static_assert
(	(!r	*	((p	or	q)	and	(!q	or	r)))	==	(p	and	!q	and	!r)
);
static_assert
(	(!r	*	((p	or	q)	and	(r	or	p)))	==	(p	and	!r)
);
static_assert
(	(!r	*	((p	or	q)	and	(r	or	!p)))	==	(!p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	or	q)	and	(r	or	q)))	==	(q	and	!r)
);
static_assert
(	(!r	*	((p	or	q)	and	(r	or	!q)))	==	(p	and	!q	and	!r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(!r	*	((p	or	q)	and	(r	or	s)))	==	((p	or	q)	and	!r	and	s)
);

///	Disjunction 1 x 2
static_assert
(	(!r	*	(p	or	(q	and	r)))	==	(p	and	!r)
);

///	Disjunction 2 x 1
static_assert
(	(!r	*	((p	and	q)	or	r))	==	(p	and	q	and	!r)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(!r	*	((p	and	q)	or	(p	and	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	and	q)	or	(!p	and	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	and	q)	or	(q	and	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	and	q)	or	(!q	and	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	and	q)	or	(r	and	p)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	and	q)	or	(r	and	!p)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	and	q)	or	(r	and	q)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	*	((p	and	q)	or	(r	and	!q)))	==	(p	and	q	and	!r)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(!r	*	((p	and	q)	or	(r	and	s)))	==	(p	and	q	and	!r)
);
