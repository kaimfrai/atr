#include "Shared.hpp"

/// ****************************************************************************
///	(p	or	q)
/// ****************************************************************************
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

/// ****************************************************************************
///	(p	or	q	or	r)
/// ****************************************************************************
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

/// ****************************************************************************
///	(p	or	(q	and	r))
/// ****************************************************************************
static_assert
(	(p	or	(p	or	(q	and	r)))	==	(p	or	(q	and	r))
);
static_assert
(	(!p	or	(p	or	(q	and	r)))	==	(T)
);

static_assert
(	(q	or	(p	or	(q	and	r)))	==	(q	or	p)
);
static_assert
(	(!q	or	(p	or	(q	and	r)))	==	(!q	or	p	or	r)
);

static_assert
(	(r	or	(p	or	(q	and	r)))	==	(r	or	p)
);
static_assert
(	(!r	or	(p	or	(q	and	r)))	==	(!r	or	p	or	q)
);

/// ****************************************************************************
///	((p	and	q)	or	(p	and	r))
/// ****************************************************************************
static_assert
(	(p	or	((p	and	q)	or	(p	and	r)))	==	(p)
);
static_assert
(	(!p	or	((p	and	q)	or	(p	and	r)))	==	(!p	or	q	or	r)
);

static_assert
(	(q	or	((p	and	q)	or	(p	and	r)))	==	(q	or	(p	and	r))
);
static_assert
(	(!q	or	((p	and	q)	or	(p	and	r)))	==	(!q	or	p)
);

static_assert
(	(r	or	((p	and	q)	or	(p	and	r)))	==	(r	or	(p	and	q))
);
static_assert
(	(!r	or	((p	and	q)	or	(p	and	r)))	==	(!r	or	p)
);
