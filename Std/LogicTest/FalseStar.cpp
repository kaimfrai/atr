#include "Shared.hpp"

static_assert
(	(F	*	T)
==	(F)
);
static_assert
(	(F	*	F)
==	(F)
);
static_assert
(	(F	*	p)
==	(F)
);

static_assert
(	(F	*	(p	and	q))
==	(F)
);
static_assert
(	(F	*	(p	and	(q	or	r)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	r))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(p	and	r)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(!p	and	!q)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(!p	and	r)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(q	and	r)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(!q	and	!p)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(!q	and	r)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(r	and	p)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(r	and	!p)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(r	and	q)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(r	and	!q)))
==	(F)
);
static_assert
(	(F	*	((p	and	q)	or	(r	and	s)))
==	(F)
);

static_assert
(	(F	*	(p	or	q))
==	(F)
);
static_assert
(	(F	*	(p	or	(q	and	r)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	r))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(p	or	r)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(!p	or	!q)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(!p	or	r)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(q	or	r)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(!q	or	!p)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(!q	or	r)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(r	or	p)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(r	or	!p)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(r	or	q)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(r	or	!q)))
==	(F)
);
static_assert
(	(F	*	((p	or	q)	and	(r	or	s)))
==	(F)
);
