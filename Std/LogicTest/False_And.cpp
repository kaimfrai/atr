#include "Shared.hpp"

///	Constant
static_assert
(	(F	and	T)	==	(F)
);
static_assert
(	(F	and	F)	==	(F)
);

///	Literal
static_assert
(	(F	and	p)	==	(F)
);

///	Conjunction 1 x 1
static_assert
(	(F	and	(p	and	q))	==	(F)
);

///	Conjunction 1 x 2
static_assert
(	(F	and	(p	and	(q	or	r)))	==	(F)
);

///	Conjunction 2 x 1
static_assert
(	(F	and	((p	or	q)	and	r))	==	(F)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(F	and	((p	or	q)	and	(!p	or	!q)))	==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(!q	or	!p)))	==	(F)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(F	and	((p	or	q)	and	(p	or	r)))	==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(!p	or	r)))	==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(q	or	r)))	==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(!q	or	r)))	==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	p)))	==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	!p)))	==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	q)))	==	(F)
);
static_assert
(	(F	and	((p	or	q)	and	(r	or	!q)))	==	(F)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(F	and	((p	or	q)	and	(r	or	s)))	==	(F)
);

///	Disjunction 1 x 1
static_assert
(	(F	and	(p	or	q))	==	(F)
);

///	Disjunciton 1 x 2
static_assert
(	(F	and	(p	or	(q	and	r)))	==	(F)
);

///	Disjunciton 1 x 2
static_assert
(	(F	and	((p	and	q)	or	r))	==	(F)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(F	and	((p	and	q)	or	(!p	and	!q)))	==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(!q	and	!p)))	==	(F)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(F	and	((p	and	q)	or	(p	and	r)))	==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(!p	and	r)))	==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(q	and	r)))	==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(!q	and	r)))	==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	p)))	==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	!p)))	==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	q)))	==	(F)
);
static_assert
(	(F	and	((p	and	q)	or	(r	and	!q)))	==	(F)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(F	and	((p	and	q)	or	(r	and	s)))	==	(F)
);
