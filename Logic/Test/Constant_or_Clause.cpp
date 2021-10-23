#include "Shared.hpp"

static_assert
(	(T	and	(p	and	q))	==	(p	and	q)
);
static_assert
(	(F	and	(p	and	q))	==	(F)
);
