#include "Shared.hpp"

static_assert
(	(F	and	T)
==	(F)
);
static_assert
(	(F	and	F)
==	(F)
);
static_assert
(	(F	and	p)
==	(F)
);

static_assert
(	(F	and	(p	and	q))
==	(F)
);
static_assert
(	(F	and	(p	and	(q	or	r)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	r))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(p	and	r)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(!p	and	!q)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(!p	and	r)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(q	and	r)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(!q	and	!p)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(!q	and	r)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	p)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	!p)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	q)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	!q)))
==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	s)))
==	(F)
);

static_assert
(	(F	and	(p	or	q))
==	(F)
);
static_assert
(	(F	and	(p	or	(q	and	r)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	r))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(p	or	r)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(!p	or	!q)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(!p	or	r)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(q	or	r)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(!q	or	!p)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(!q	or	r)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	p)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	!p)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	q)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	!q)))
==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	s)))
==	(F)
);

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

static_assert
(	(F	or	T)
==	(T)
);
static_assert
(	(F	or	F)
==	(F)
);
static_assert
(	(F	or	p)
==	(p)
);

static_assert
(	(F	or	(p	and	q))
==	(p	and	q)
);
static_assert
(	(F	or	(p	and	(q	or	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(F	or	((p	and	q)	or	r))
==	((p	and	q)	or	r)
);
static_assert
(	(F	or	((p	and	q)	or	(p	and	r)))
==	((p	and	q)	or	(p	and	r))
);
static_assert
(	(F	or	((p	and	q)	or	(!p	and	!q)))
==	((p	and	q)	or	(!p	and	!q))
);
static_assert
(	(F	or	((p	and	q)	or	(!p	and	r)))
==	((p	and	q)	or	(!p	and	r))
);
static_assert
(	(F	or	((p	and	q)	or	(q	and	r)))
==	((p	and	q)	or	(q	and	r))
);
static_assert
(	(F	or	((p	and	q)	or	(!q	and	!p)))
==	((p	and	q)	or	(!q	and	!p))
);
static_assert
(	(F	or	((p	and	q)	or	(!q	and	r)))
==	((p	and	q)	or	(!q	and	r))
);
static_assert
(	(F	or	((p	and	q)	or	(r	and	p)))
==	((p	and	q)	or	(r	and	p))
);
static_assert
(	(F	or	((p	and	q)	or	(r	and	!p)))
==	((p	and	q)	or	(r	and	!p))
);
static_assert
(	(F	or	((p	and	q)	or	(r	and	q)))
==	((p	and	q)	or	(r	and	q))
);
static_assert
(	(F	or	((p	and	q)	or	(r	and	!q)))
==	((p	and	q)	or	(r	and	!q))
);
static_assert
(	(F	or	((p	and	q)	or	(r	and	s)))
==	((p	and	q)	or	(r	and	s))
);

static_assert
(	(F	or	(p	or	q))
==	(p	or	q)
);
static_assert
(	(F	or	(p	or	(q	and	r)))
==	(p	or	(q	and	r))
);
static_assert
(	(F	or	((p	or	q)	and	r))
==	((p	or	q)	and	r)
);
static_assert
(	(F	or	((p	or	q)	and	(p	or	r)))
==	((p	or	q)	and	(p	or	r))
);
static_assert
(	(F	or	((p	or	q)	and	(!p	or	!q)))
==	((p	or	q)	and	(!p	or	!q))
);
static_assert
(	(F	or	((p	or	q)	and	(!p	or	r)))
==	((p	or	q)	and	(!p	or	r))
);
static_assert
(	(F	or	((p	or	q)	and	(q	or	r)))
==	((p	or	q)	and	(q	or	r))
);
static_assert
(	(F	or	((p	or	q)	and	(!q	or	!p)))
==	((p	or	q)	and	(!q	or	!p))
);
static_assert
(	(F	or	((p	or	q)	and	(!q	or	r)))
==	((p	or	q)	and	(!q	or	r))
);
static_assert
(	(F	or	((p	or	q)	and	(r	or	p)))
==	((p	or	q)	and	(r	or	p))
);
static_assert
(	(F	or	((p	or	q)	and	(r	or	!p)))
==	((p	or	q)	and	(r	or	!p))
);
static_assert
(	(F	or	((p	or	q)	and	(r	or	q)))
==	((p	or	q)	and	(r	or	q))
);
static_assert
(	(F	or	((p	or	q)	and	(r	or	!q)))
==	((p	or	q)	and	(r	or	!q))
);
static_assert
(	(F	or	((p	or	q)	and	(r	or	s)))
==	((p	or	q)	and	(r	or	s))
);

static_assert
(	(F	+	T)
==	(T)
);
static_assert
(	(F	+	F)
==	(F)
);
static_assert
(	(F	+	p)
==	(p)
);

static_assert
(	(F	+	(p	and	q))
==	(p	and	q)
);
static_assert
(	(F	+	(p	and	(q	or	r)))
==	(p	and	(q	or	r))
);
static_assert
(	(F	+	((p	and	q)	or	r))
==	((p	and	q)	or	r)
);
static_assert
(	(F	+	((p	and	q)	or	(p	and	r)))
==	((p	and	q)	or	(p	and	r))
);
static_assert
(	(F	+	((p	and	q)	or	(!p	and	!q)))
==	((p	and	q)	or	(!p	and	!q))
);
static_assert
(	(F	+	((p	and	q)	or	(!p	and	r)))
==	((p	and	q)	or	(!p	and	r))
);
static_assert
(	(F	+	((p	and	q)	or	(q	and	r)))
==	((p	and	q)	or	(q	and	r))
);
static_assert
(	(F	+	((p	and	q)	or	(!q	and	!p)))
==	((p	and	q)	or	(!q	and	!p))
);
static_assert
(	(F	+	((p	and	q)	or	(!q	and	r)))
==	((p	and	q)	or	(!q	and	r))
);
static_assert
(	(F	+	((p	and	q)	or	(r	and	p)))
==	((p	and	q)	or	(r	and	p))
);
static_assert
(	(F	+	((p	and	q)	or	(r	and	!p)))
==	((p	and	q)	or	(r	and	!p))
);
static_assert
(	(F	+	((p	and	q)	or	(r	and	q)))
==	((p	and	q)	or	(r	and	q))
);
static_assert
(	(F	+	((p	and	q)	or	(r	and	!q)))
==	((p	and	q)	or	(r	and	!q))
);
static_assert
(	(F	+	((p	and	q)	or	(r	and	s)))
==	((p	and	q)	or	(r	and	s))
);

static_assert
(	(F	+	(p	or	q))
==	(p	or	q)
);
static_assert
(	(F	+	(p	or	(q	and	r)))
==	(p	or	(q	and	r))
);
static_assert
(	(F	+	((p	or	q)	and	r))
==	((p	or	q)	and	r)
);
static_assert
(	(F	+	((p	or	q)	and	(p	or	r)))
==	((p	or	q)	and	(p	or	r))
);
static_assert
(	(F	+	((p	or	q)	and	(!p	or	!q)))
==	((p	or	q)	and	(!p	or	!q))
);
static_assert
(	(F	+	((p	or	q)	and	(!p	or	r)))
==	((p	or	q)	and	(!p	or	r))
);
static_assert
(	(F	+	((p	or	q)	and	(q	or	r)))
==	((p	or	q)	and	(q	or	r))
);
static_assert
(	(F	+	((p	or	q)	and	(!q	or	!p)))
==	((p	or	q)	and	(!q	or	!p))
);
static_assert
(	(F	+	((p	or	q)	and	(!q	or	r)))
==	((p	or	q)	and	(!q	or	r))
);
static_assert
(	(F	+	((p	or	q)	and	(r	or	p)))
==	((p	or	q)	and	(r	or	p))
);
static_assert
(	(F	+	((p	or	q)	and	(r	or	!p)))
==	((p	or	q)	and	(r	or	!p))
);
static_assert
(	(F	+	((p	or	q)	and	(r	or	q)))
==	((p	or	q)	and	(r	or	q))
);
static_assert
(	(F	+	((p	or	q)	and	(r	or	!q)))
==	((p	or	q)	and	(r	or	!q))
);
static_assert
(	(F	+	((p	or	q)	and	(r	or	s)))
==	((p	or	q)	and	(r	or	s))
);
