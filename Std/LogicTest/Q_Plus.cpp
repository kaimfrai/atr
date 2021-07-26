#include "Shared.hpp"

///	Conjunction 1 x 1
static_assert
(	(q	+	(p	and	q))	==	(q)
);

///	Conjunction 1 x 2
static_assert
(	(q	+	(p	and	(q	or	r)))	==	((p	and	r)	or	q)
);

///	Conjunction 2 x 1
static_assert
(	(q	+	((p	or	q)	and	r))	==	((p	and	r)	or	q)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(q	+	((p	or	q)	and	(!p	or	!q)))	==	(p	or	q)
);
static_assert
(	(q	+	((p	or	q)	and	(!q	or	!p)))	==	(p	or	q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(q	+	((p	or	q)	and	(p	or	r)))	==	(p	or	q)
);
static_assert
(	(q	+	((p	or	q)	and	(!p	or	r)))	==	((p	and	r)	or	q)
);
static_assert
(	(q	+	((p	or	q)	and	(q	or	r)))	==	((p	and	r)	or	q)
);
static_assert
(	(q	+	((p	or	q)	and	(!q	or	r)))	==	(p	or	q)
);
static_assert
(	(q	+	((p	or	q)	and	(r	or	p)))	==	(p	or	q)
);
static_assert
(	(q	+	((p	or	q)	and	(r	or	!p)))	==	((p	and	r)	or	q)
);
static_assert
(	(q	+	((p	or	q)	and	(r	or	q)))	==	((p	and	r)	or	q)
);
static_assert
(	(q	+	((p	or	q)	and	(r	or	!q)))	==	(p	or	q)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(q	+	((p	or	q)	and	(r	or	s)))	==	((p	and	r)	or	(p	and	s)	or	q)
);

///	Disjunction 1 x 1
static_assert
(	(q	+	(p	or	q))	==	(p	or	q)
);

///	Disjunction 1 x 2
static_assert
(	(q	+	(p	or	(q	and	r)))	==	(p	or	q)
);

///	Disjunction 2 x 1
static_assert
(	(q	+	((p	and	q)	or	r))	==	(q	or	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(q	+	((p	and	q)	or	(!p	and	!q)))	==	(!p	or	q)
);
static_assert
(	(q	+	((p	and	q)	or	(!q	and	!p)))	==	(!p	or	q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(q	+	((p	and	q)	or	(p	and	r)))	==	((p	and	r)	or	q)
);
static_assert
(	(q	+	((p	and	q)	or	(!p	and	r)))	==	((!p and	r)	or	q)
);
static_assert
(	(q	+	((p	and	q)	or	(q	and	r)))	==	(q)
);
static_assert
(	(q	+	((p	and	q)	or	(!q	and	r)))	==	(q	or	r)
);
static_assert
(	(q	+	((p	and	q)	or	(r	and	p)))	==	((p	and	r)	or	q)
);
static_assert
(	(q	+	((p	and	q)	or	(r	and	!p)))	==	((!p	and	r)	or	q)
);
static_assert
(	(q	+	((p	and	q)	or	(r	and	q)))	==	(q)
);
static_assert
(	(q	+	((p	and	q)	or	(r	and	!q)))	==	(q	or	r)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(q	+	((p	and	q)	or	(r	and	s)))	==	(q	or	(r	and	s))
);
