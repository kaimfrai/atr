#include "Shared.hpp"

static_assert
(	(p	and	p)	==	(p)
);
static_assert
(	(p	and	!p)	==	(F)
);

static_assert
(	(!p	and	p)	==	(F)
);
static_assert
(	(!p	and	!p)	==	(!p)
);

static_assert
(	(q	and	p)	==	(q	and	p)
);

//	New clause: (p	and	q)
static_assert
(	(p	and	q)	<=>	(q	and	p)
);
