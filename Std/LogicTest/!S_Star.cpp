#include "Shared.hpp"

///	4 Literal Disjunction 2 x 2
static_assert
(	(!s	*	((p	or	q)	and	(r	or	s)))	==	((p	or	q)	and	r	and	!s)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(!s	*	((p	and	q)	or	(r	and	s)))	==	(p	and	q	and	!s)
);
