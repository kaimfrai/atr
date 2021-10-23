#include "Shared.hpp"

static_assert
(	(p	or	T)	==	(T)
);
static_assert
(	(p	or	F)	==	(p)
);

static_assert
(	(!p	or	T)	==	(T)
);
static_assert
(	(!p	or	F)	==	(!p)
);
