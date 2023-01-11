import Meta.Logic.Test.Data;

/// ************************************************************************************************
///	(p	or	q	or	r)
/// ************************************************************************************************
static_assert
(	(p	or	q	or	r)
==	(p	or	q	or	r)
);
static_assert
(	(p	or	q	or	r)
==	(p	or	r	or	q)
);

static_assert
(	(p	or	q	or	r)
==	(q	or	p	or	r)
);
static_assert
(	(p	or	q	or	r)
==	(q	or	r	or	p)
);

static_assert
(	(p	or	q	or	r)
==	(r	or	p	or	q)
);
static_assert
(	(p	or	q	or	r)
==	(r	or	q	or	p)
);
