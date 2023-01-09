import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	and	q	and	r)
/// ************************************************************************************************
static_assert
(	(p	and	q	and	r)
==	(p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r)
==	(p	and	r	and	q)
);

static_assert
(	(p	and	q	and	r)
==	(q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r)
==	(q	and	r	and	p)
);

static_assert
(	(p	and	q	and	r)
==	(r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r)
==	(r	and	q	and	p)
);
