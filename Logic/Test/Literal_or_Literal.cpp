#include "Shared.hpp"

static_assert
(	(p	or	p)	==	(p)
);
static_assert
(	(p	or	!p)	==	(T)
);

static_assert
(	(!p	or	p)	==	(T)
);
static_assert
(	(!p	or	!p)	==	(!p)
);

static_assert
(	(q	or	p)	==	(q	or	p)
);

//	New term: (p	or	q)
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

