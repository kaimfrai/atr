#include "Shared.hpp"

///	Conjunction 1 x 2
static_assert
(	(!r	+	(p	and	(q	or	r)))	==	(p	or	!r)
);

///	Conjunction 2 x 1
static_assert
(	(!r	+	((p	or	q)	and	r))	==	(p	or	q	or	!r)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(!r	+	((p	or	q)	and	(p	or	r)))	==	(p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	or	q)	and	(!p	or	r)))	==	(p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	or	q)	and	(q	or	r)))	==	(p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	or	q)	and	(!q	or	r)))	==	(p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	or	q)	and	(r	or	p)))	==	(p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	or	q)	and	(r	or	!p)))	==	(p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	or	q)	and	(r	or	q)))	==	(p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	or	q)	and	(r	or	!q)))	==	(p	or	q	or	!r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(!r	+	((p	or	q)	and	(r	or	s)))	==	(p	or	q	or	!r)
);

///	Disjunction 1 x 2
static_assert
(	(!r	+	(p	or	(q	and	r)))	==	(p	or	q	or	!r)
);

///	Disjunction 2 x 1
static_assert
(	(!r	+	((p	and	q)	or	r))	==	(T)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(!r	+	((p	and	q)	or	(p	and	r)))	==	(p	or	!r)
);
static_assert
(	(!r	+	((p	and	q)	or	(!p	and	r)))	==	(!p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	and	q)	or	(q	and	r)))	==	(q	or	!r)
);
static_assert
(	(!r	+	((p	and	q)	or	(!q	and	r)))	==	(p	or	!q	or	!r)
);
static_assert
(	(!r	+	((p	and	q)	or	(r	and	p)))	==	(p	or	!r)
);
static_assert
(	(!r	+	((p	and	q)	or	(r	and	!p)))	==	(!p	or	q	or	!r)
);
static_assert
(	(!r	+	((p	and	q)	or	(r	and	q)))	==	(q	or	!r)
);
static_assert
(	(!r	+	((p	and	q)	or	(r	and	!q)))	==	(p	or	!q	or	!r)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(!r	+	((p	and	q)	or	(r	and	s)))	==	((p	and	q)	or	!r	or	s)
);
