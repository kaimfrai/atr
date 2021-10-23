#include "Shared.hpp"

static_assert
(	((T)	and	(T))	==	(T)
);
static_assert
(	((T)	and	(F))	==	(F)
);
static_assert
(	((T)	and	(p))	==	(p)
);

static_assert
(	((F)	and	(T))	==	(F)
);
static_assert
(	((F)	and	(F))	==	(F)
);
static_assert
(	((F)	and	(p))	==	(F)
);

static_assert
(	((p)	and	(T))	==	(p)
);
static_assert
(	((p)	and	(F))	==	(F)
);
static_assert
(	((p)	and	(p))	==	(p)
);
static_assert
(	((p)	and	(!p))	==	(F)
);

static_assert
(	((p)	and	(q))	==	(p	and	q)
);
static_assert
(	((p)	and	(r))	==	(p	and	r)
);
static_assert
(	((q)	and	(r))	==	(q	and	r)
);
