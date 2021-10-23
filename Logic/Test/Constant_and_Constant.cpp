#include "Shared.hpp"

static_assert
(	(T	and	T)	==	(T)
);
static_assert
(	(T	and	F)	==	(F)
);

static_assert
(	(F	and	T)	==	(F)
);
static_assert
(	(F	and	F)	==	(F)
);
