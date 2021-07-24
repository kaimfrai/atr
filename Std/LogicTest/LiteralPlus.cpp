#include "Shared.hpp"

static_assert
(	(p	+	T)
==	(T)
);
static_assert
(	(p	+	F)
==	(p)
);
static_assert
(	(p	+	p)
==	(p)
);

static_assert
(	(p	+	(p	and	q))
==	(p)
);
static_assert
(	(p	+	(p	and	(q	or	r)))
==	(p)
);
static_assert
(	(p	+	((p	and	q)	or	r))
==	(p	or	r)
);
static_assert
(	(p	+	((p	and	q)	or	(p	and	r)))
==	(p)
);
static_assert
(	(p	+	((p	and	q)	or	(!p	and	!q)))
==	(p	or	!q)
);
static_assert
(	(p	+	((p	and	q)	or	(!p	and	r)))
==	(p	or	r)
);
static_assert
(	(p	+	((p	and	q)	or	(q	and	r)))
==	(p	or	(q	and	r))
);
static_assert
(	(p	+	((p	and	q)	or	(!q	and	!p)))
==	(p	or	!q)
);
static_assert
(	(p	+	((p	and	q)	or	(!q	and	r)))
==	(p	or	(!q	and	r))
);
static_assert
(	(p	+	((p	and	q)	or	(r	and	p)))
==	(p)
);
static_assert
(	(p	+	((p	and	q)	or	(r	and	!p)))
==	(p	or	r)
);
static_assert
(	(p	+	((p	and	q)	or	(r	and	q)))
==	(p	or	(r	and	q))
);
static_assert
(	(p	+	((p	and	q)	or	(r	and	!q)))
==	(p	or	(r	and	!q))
);
static_assert
(	(p	+	((p	and	q)	or	(r	and	s)))
==	(p	or	(r	and	s))
);

static_assert
(	(p	+	(p	or	q))
==	(p	or	q)
);
static_assert
(	(p	+	(p	or	(q	and	r)))
==	(p	or	(q	and	r))
);
static_assert
(	(p	+	((p	or	q)	and	r))
==	(p	or	(q	and	r))
);
static_assert
(	(p	+	((p	or	q)	and	(p	or	r)))
==	((p	or	q)	and	(p	or	r))
);
static_assert
(	(p	+	((p	or	q)	and	(!p	or	!q)))
==	(p	or	q)
);
static_assert
(	(p	+	((p	or	q)	and	(!p	or	r)))
==	(p	or	q)
);
static_assert
(	(p	+	((p	or	q)	and	(q	or	r)))
==	(p	or	q)
);
static_assert
(	(p	+	((p	or	q)	and	(!q	or	!p)))
==	(p	or	q)
);
static_assert
(	(p	+	((p	or	q)	and	(!q	or	r)))
==	(p	or	(q	and	r))
);
static_assert
(	(p	+	((p	or	q)	and	(r	or	p)))
==	(p	or	(q	and	r))
);
static_assert
(	(p	+	((p	or	q)	and	(r	or	!p)))
==	(p	or	q)
);
static_assert
(	(p	+	((p	or	q)	and	(r	or	q)))
==	(p	or	q)
);
static_assert
(	(p	+	((p	or	q)	and	(r	or	!q)))
==	(p	or	(q	and	r))
);
static_assert
(	(p	+	((p	or	q)	and	(r	or	s)))
==	(p	or	(q	and	r)	or	(q	and	s))
);
