#include"Shared.hpp"

///	Literal
static_assert
(	(p	and	T)	==	(p)
);
static_assert
(	(p	and	F)	==	(F)
);
static_assert
(	(p	and	p)	==	(p)
);
static_assert
(	(p	and	!p)	==	(F)
);
static_assert
(	(p	and	q)	==	(p	and	q)
);

///	Conjunction 1 x 1
static_assert
(	(p	and	(p	and	q))	==	(p	and	q)
);
static_assert
(	(!p	and	(p	and	q))	==	(F)
);
static_assert
(	(q	and	(p	and	q))	==	(p	and	q)
);
static_assert
(	(!q	and	(p	and	q))	==	(F)
);
static_assert
(	(r	and	(p	and	q))	==	(p	and	q	and	r)
);

///	Conjunction 1 x 2
static_assert
(	(p	and	(p	and	(q	or	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(!p	and	(p	and	(q	or	r)))	==	(F)
);
static_assert
(	(q	and	(p	and	(q	or	r)))	==	(p	and	q)
);
static_assert
(	(!q	and	(p	and	(q	or	r)))	==	(p	and	!q	and	r)
);
static_assert
(	(r	and	(p	and	(q	or	r)))	==	(p	and	r)
);
static_assert
(	(!r	and	(p	and	(q	or	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(s	and	(p	and	(q	or	r)))	==	(p	and	(q	or	r)	and	s)
);

///	Disjunction 2 x 1
static_assert
(	(p	and	((p	and	q)	or	r))	==	(p	and	(q	or	r))
);
static_assert
(	(!p	and	((p	and	q)	or	r))	==	(!p	and	r)
);
static_assert
(	(q	and	((p	and	q)	or	r))	==	((p	or	r)	and	q)
);
static_assert
(	(!q	and	((p	and	q)	or	r))	==	(!q	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	r))	==	(r)
);
static_assert
(	(!r	and	((p	and	q)	or	r))	==	(p	and	q	and	!r)
);
static_assert
(	(s	and	((p	and	q)	or	r))	==	((p	or	r)	and	(q	or	r)	and	s)
);

///	Disjunction 2 x 2
static_assert
(	(p	and	((p	and	q)	or	(p	and	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(!p	and	!q)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!p	and	r)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(q	and	r)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	!p)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	p)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!p)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	q)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!q)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	s)))	==	(p	and	(q	or	r)	and	(q	or	s))
);

static_assert
(	(!p	and	((p	and	q)	or	(p	and	r)))	==	(F)
);
static_assert
(	(!p	and	((p	and	q)	or	(!p	and	!q)))	==	(!p	and	!q)
);
static_assert
(	(!p	and	((p	and	q)	or	(!p	and	r)))	==	(!p	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(q	and	r)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(!q	and	!p)))	==	(!p	and	!q)
);
static_assert
(	(!p	and	((p	and	q)	or	(!q	and	r)))	==	(!p	and	!q	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	p)))	==	(F)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	!p)))	==	(!p	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	q)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	!q)))	==	(!p	and	!q	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	s)))	==	(!p	and	r	and	s)
);

static_assert
(	(q	and	((p	and	q)	or	(p	and	r)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(!p	and	!q)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(!p	and	r)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(q	and	r)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(!q	and	!p)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(!q	and	r)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	p)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	!p)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	q)))	==	((p	or	r)	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	!q)))	==	(p	and	q)
);
static_assert
(	(q	and	((p	and	q)	or	(r	and	s)))	==	((p	or	r)	and	(p	or	s)	and	q)
);

static_assert
(	(!q	and	((p	and	q)	or	(p	and	r)))	==	(p	and	!q	and	r)
);
static_assert
(	(!q	and	((p	and	q)	or	(!p	and	!q)))	==	(!p	and	!q)
);
static_assert
(	(!q	and	((p	and	q)	or	(!p	and	r)))	==	(!p	and	!q	and	r)
);
static_assert
(	(!q	and	((p	and	q)	or	(q	and	r)))	==	(F)
);
static_assert
(	(!q	and	((p	and	q)	or	(!q	and	!p)))	==	(!p	and	!q)
);
static_assert
(	(!q	and	((p	and	q)	or	(!q	and	r)))	==	(!q	and	r)
);
static_assert
(	(!q	and	((p	and	q)	or	(r	and	p)))	==	(p	and	!q	and	r)
);
static_assert
(	(!q	and	((p	and	q)	or	(r	and	!p)))	==	(!p	and	!q	and	r)
);
static_assert
(	(!q	and	((p	and	q)	or	(r	and	q)))	==	(F)
);
static_assert
(	(!q	and	((p	and	q)	or	(r	and	!q)))	==	(!q	and	r)
);
static_assert
(	(!q	and	((p	and	q)	or	(r	and	s)))	==	(!q	and	r	and	s)
);

static_assert
(	(r	and	((p	and	q)	or	(p	and	r)))	==	(p	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(!p	and	!q)))	==	((p	or	!q)	and	(!p	or	q)	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(!p	and	r)))	==	((!p	or	q)	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(q	and	r)))	==	(q	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(!q	and	!p)))	==	((p	or	!q)	and	(!p	or	q)	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(!q	and	r)))	==	((p	or	!q)	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(r	and	p)))	==	(p	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(r	and	!p)))	==	((!p	or	q)	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(r	and	q)))	==	(q	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(r	and	!q)))	==	((p	or	!q)	and	r)
);
static_assert
(	(r	and	((p	and	q)	or	(r	and	s)))	==	((p	or	s)	and	(q	or	s)	and	r)
);

static_assert
(	(!r	and	((p	and	q)	or	(p	and	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(!p	and	!q)))	==	((p	or	!q)	and	(!p	or	q)	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(!p	and	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(q	and	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(!q	and	!p)))	==	((p	or	!q)	and	(!p	or	q)	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(!q	and	r)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(r	and	p)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(r	and	!p)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(r	and	q)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(r	and	!q)))	==	(p	and	q	and	!r)
);
static_assert
(	(!r	and	((p	and	q)	or	(r	and	s)))	==	(p	and	q	and	!r)
);

static_assert
(	(s	and	((p	and	q)	or	(p	and	r)))	==	(p	and	(q	or	r)	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(!p	and	!q)))	==	((p	or	!q)	and	(!p	or	q)	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(!p	and	r)))	==	((p	or	r)	and	(!p	or	q)	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(q	and	r)))	==	((p	or	r)	and	q	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(!q	and	!p)))	==	((p	or	!q)	and	(!p	or	q)	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(!q	and	r)))	==	((p	or	!q)	and	(q	or	r)	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(r	and	p)))	==	(p	and	(q	or	r)	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(r	and	!p)))	==	((p	or	r)	and	(!p	or	q)	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(r	and	q)))	==	((p	or	r)	and	q	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(r	and	!q)))	==	((p	or	!q)	and	(q	or	r)	and	s)
);
static_assert
(	(s	and	((p	and	q)	or	(r	and	s)))	==	((p	or	r)	and	(q	or	r)	and	s)
);

static_assert
(	(!s	and	((p	and	q)	or	(p	and	r)))	==	(p	and	(q	or	r)	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(!p	and	!q)))	==	((p	or	!q)	and	(!p	or	q)	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(!p	and	r)))	==	((p	or	r)	and	(!p	or	q)	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(q	and	r)))	==	((p	or	r)	and	q	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(!q	and	!p)))	==	((p	or	!q)	and	(!p	or	q)	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(!q	and	r)))	==	((p	or	!q)	and	(q	or	r)	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(r	and	p)))	==	(p	and	(q	or	r)	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(r	and	!p)))	==	((p	or	r)	and	(!p	or	q)	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(r	and	q)))	==	((p	or	r)	and	q	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(r	and	!q)))	==	((p	or	!q)	and	(q	or	r)	and	!s)
);
static_assert
(	(!s	and	((p	and	q)	or	(r	and	s)))	==	(p	and	q	and	!s)
);

///	Disjunction 1 x 1
static_assert
(	(p	and	(p	or	q))	==	(p)
);
static_assert
(	(!p	and	(p	or	q))	==	(!p	and	q)
);
static_assert
(	(q	and	(p	or	q))	==	(q)
);
static_assert
(	(!q	and	(p	or	q))	==	(p	and	!q)
);
static_assert
(	(r	and	(p	or	q))	==	((p	or	q)	and	r)
);

///	Disjunction 1 x 2
static_assert
(	(p	and	(p	or	(q	and	r)))	==	(p)
);
static_assert
(	(!p	and	(p	or	(q	and	r)))	==	(!p	and	q	and	r)
);
static_assert
(	(q	and	(p	or	(q	and	r)))	==	((p	or	r)	and	q)
);
static_assert
(	(!q	and	(p	or	(q	and	r)))	==	(p	and	!q)
);
static_assert
(	(r	and	(p	or	(q	and	r)))	==	((p	or	q)	and	r)
);
static_assert
(	(!r	and	(p	or	(q	and	r)))	==	(p	and	!r)
);
static_assert
(	(s	and	(p	or	(q	and	r)))	==	((p	or	q)	and	(p	or	r)	and	s)
);

///	Conjunction 2 x 1
static_assert
(	(p	and	((p	or	q)	and	r))	==	(p	and	r)
);
static_assert
(	(!p	and	((p	or	q)	and	r))	==	(!p	and	q	and	r)
);
static_assert
(	(q	and	((p	or	q)	and	r))	==	(q	and	r)
);
static_assert
(	(!q	and	((p	or	q)	and	r))	==	(p	and	!q	and	r)
);
static_assert
(	(r	and	((p	or	q)	and	r))	==	((p	or	q)	and	r)
);
static_assert
(	(!r	and	((p	or	q)	and	r))	==	(F)
);
static_assert
(	(s	and	((p	or	q)	and	r))	==	((p	or	q)	and	r	and	s)
);

///	Conjunction 2 x 2
static_assert
(	(p	and	((p	or	q)	and	(p	or	r)))	==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(!p	or	!q)))	==	(p	and	!q)
);
static_assert
(	(p	and	((p	or	q)	and	(!p	or	r)))	==	(p	and	r)
);
static_assert
(	(p	and	((p	or	q)	and	(q	or	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	!p)))	==	(p	and	!q)
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	r)))	==	(p	and	(!q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	p)))	==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!p)))	==	(p	and	r)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	q)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!q)))	==	(p	and	(!q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	s)))	==	(p	and	(r	or	s))
);
