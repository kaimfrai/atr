#include "Shared.hpp"

static_assert
(	(T	and	(p	and	q))	==	(p	and	q)
);
static_assert
(	(F	and	(p	and	q))	==	(F)
);

static_assert
(	(T	and	(p	and	q	and	r))	==	(p	and	q	and	r)
);
static_assert
(	(F	and	(p	and	q	and	r))	==	(F)
);
