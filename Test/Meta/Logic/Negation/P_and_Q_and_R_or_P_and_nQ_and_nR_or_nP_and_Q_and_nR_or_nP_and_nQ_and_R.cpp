import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
/// ************************************************************************************************
static_assert
(	not
	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	!q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	q	and	!r	or	!p	and	!q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	q	and	r	or	!p	and	!q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);

static_assert
(	not
	(p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	q	and	!r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	!q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	q	and	!r	or	p	and	q	and	r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	q	and	!r	or	!p	and	!q	and	r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	!q	and	r	or	p	and	q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(p	and	!q	and	!r	or	!p	and	!q	and	r	or	!p	and	q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);

static_assert
(	not
	(!p	and	q	and	!r	or	p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	p	and	q	and	r	or	!p	and	!q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	!q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	p	and	!q	and	!r	or	!p	and	!q	and	r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	!p	and	!q	and	r	or	p	and	q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	q	and	!r	or	!p	and	!q	and	r	or	p	and	!q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);

static_assert
(	not
	(!p	and	!q	and	r	or	p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	p	and	q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	p	and	!q	and	!r	or	p	and	q	and	r	or	!p	and	q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	!p	and	q	and	!r	or	p	and	q	and	r	or	p	and	!q	and	!r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	not
	(!p	and	!q	and	r	or	!p	and	q	and	!r	or	p	and	!q	and	!r	or	p	and	q	and	r)
==	(p	and	q	and	!r	or	p	and	!q	and	r	or	!p	and	q	and	r	or	!p	and	!q	and	!r)
);
