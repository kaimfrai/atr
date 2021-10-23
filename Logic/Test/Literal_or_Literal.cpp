#include "Shared.hpp"

static_assert
(	(T	or	T)	==	(T)
);
static_assert
(	(T	or	F)	==	(T)
);
static_assert
(	(T	or	p)	==	(T)
);

static_assert
(	(F	or	T)	==	(T)
);
static_assert
(	(F	or	F)	==	(F)
);
static_assert
(	(F	or	p)	==	(p)
);

static_assert
(	(p	or	T)	==	(T)
);
static_assert
(	(p	or	F)	==	(p)
);
static_assert
(	(p	or	p)	==	(p)
);
static_assert
(	(p	or	!p)	==	(T)
);

static_assert
(	(!p	or	T)	==	(T)
);
static_assert
(	(!p	or	F)	==	(!p)
);
static_assert
(	(!p	or	p)	==	(T)
);
static_assert
(	(!p	or	!p)	==	(!p)
);

static_assert
(	(p	or	q)	<=>	(q	or	p)
);

static_assert
(	(p	or	q	or	r)	<=>	(p	or	r	or	q)
);
static_assert
(	(p	or	q	or	r)	<=>	(q	or	p	or	r)
);
static_assert
(	(p	or	q	or	r)	<=>	(q	or	r	or	p)
);

