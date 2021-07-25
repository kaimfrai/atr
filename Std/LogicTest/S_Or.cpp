#include "Shared.hpp"

///	4 Literal Conjunction 2 x 2
static_assert
(	(s	or	((p	or	q)	and	(r	or	s)))	==	((p	and	r)	or	(q	and	r)	or	s)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(s	or	((p	and	q)	or	(r	and	s)))	==	((p	and	q)	or	s)
);
