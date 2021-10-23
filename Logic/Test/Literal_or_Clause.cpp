#include "Shared.hpp"

static_assert
(	(p	or	(p	or	q))	==	(p	or	q)
);
static_assert
(	(!p	or	(p	or	q))	==	(T)
);

static_assert
(	(q	or	(p	or	q))	==	(q	or	p)
);
static_assert
(	(!q	or	(p	or	q))	==	(T)
);

static_assert
(	(r	or	(p	or	q))	==	(r	or	p	or	q)
);

//	New term: (p	or	q	or	r)
static_assert
(	(p	or	q	or	r)	<=>	(p	or	r	or	q)
);
static_assert
(	(p	or	q	or	r)	<=>	(q	or	p	or	r)
);
static_assert
(	(p	or	q	or	r)	<=>	(q	or	r	or	p)
);

static_assert
(	(p	or	(p	or	q	or	r))	==	(p	or	q	or	r)
);
static_assert
(	(!p	or	(p	or	q	or	r))	==	(T)
);

static_assert
(	(q	or	(p	or	q	or	r))	==	(q	or	p	or	r)
);
static_assert
(	(!q	or	(p	or	q	or	r))	==	(T)
);

static_assert
(	(r	or	(p	or	q	or	r))	==	(r	or	p	or	q)
);
static_assert
(	(!r	or	(p	or	q	or	r))	==	(T)
);
