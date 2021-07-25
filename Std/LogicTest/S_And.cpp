#include "Shared.hpp"

///	4 Literal Disjunction 2 x 2
static_assert
(	(s	and	((p	or	q)	and	(r	or	s)))	==	((p	or	q)	and	s)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(s	and	((p	and	q)	or	(r	and	s)))	==	((p	or	r)	and	(q	or	r)	and	s)
);
