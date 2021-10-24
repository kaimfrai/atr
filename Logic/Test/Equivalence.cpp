#include "Shared.hpp"

/// ****************************************************************************
///	(T)
/// ****************************************************************************
static_assert
(	(T)
<=>	(T)
);

/// ****************************************************************************
///	(F)
/// ****************************************************************************
static_assert
(	(F)
<=>	(F)
);

/// ****************************************************************************
///	(p)
/// ****************************************************************************
static_assert
(	(p)
<=>	(p)
);

/// ****************************************************************************
///	(!p)
/// ****************************************************************************
static_assert
(	(!p)
<=>	(!p)
);

/// ****************************************************************************
///	(p	and	q)
/// ****************************************************************************
static_assert
(	(p	and	q)
<=>	(p	and	q)
);
static_assert
(	(p	and	q)
<=>	(q	and	p)
);

/// ****************************************************************************
///	(p	and	q	and	r)
/// ****************************************************************************
static_assert
(	(p	and	q	and	r)
<=>	(p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r)
<=>	(p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r)
<=>	(q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r)
<=>	(q	and	r	and	p)
);

/// ****************************************************************************
///	(p	or	q)
/// ****************************************************************************
static_assert
(	(p	or	q)
<=>	(p	or	q)
);
static_assert
(	(p	or	q)
<=>	(q	or	p)
);

/// ****************************************************************************
///	(p	or	q	or	r)
/// ****************************************************************************
static_assert
(	(p	or	q	or	r)
<=>	(p	or	q	or	r)
);
static_assert
(	(p	or	q	or	r)
<=>	(p	or	r	or	q)
);
static_assert
(	(p	or	q	or	r)
<=>	(q	or	p	or	r)
);
static_assert
(	(p	or	q	or	r)
<=>	(q	or	r	or	p)
);

/// ****************************************************************************
///	(p	or	q	and	r)
/// ****************************************************************************
static_assert
(	(p	or	q	and	r)
<=>	(p	or	q	and	r)
);
static_assert
(	(p	or	q	and	r)
<=>	(p	or	r	and	q)
);
static_assert
(	(p	or	q	and	r)
<=>	(q	and	r	or	p)
);
static_assert
(	(p	or	q	and	r)
<=>	(r	and	q	or	p)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r)
/// ****************************************************************************
static_assert
(	(p	and	q	or	p	and	r)
<=>	(p	and	q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r)
<=>	(p	and	q	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r)
<=> (q	and	p	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r)
<=>	(q	and	p	or	r	and	p)
);

static_assert
(	(p	and	q	or	p	and	r)
<=>	(p	and	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r)
<=>	(p	and	r	or	q	and	p)
);
static_assert
(	(p	and	q	or	p	and	r)
<=> (r	and	p	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r)
<=>	(r	and	p	or	q	and	p)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(p	and	q	or	!p	and	!q)
<=>	(p	and	q	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	!p	and	!q)
<=>	(p	and	q	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	!p	and	!q)
<=>	(q	and	p	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	!p	and	!q)
<=>	(q	and	p	or	!q	and	!p)
);

static_assert
(	(p	and	q	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	!q)
<=>	(!p	and	!q	or	q	and	p)
);
static_assert
(	(p	and	q	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	!q)
<=>	(!q	and	!p	or	q	and	p)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	r)
/// ****************************************************************************
static_assert
(	(p	and	q	or	!p	and	r)
<=>	(p	and	q	or	!p	and	r)
);
static_assert
(	(p	and	q	or	!p	and	r)
<=>	(p	and	q	or	r	and	!p)
);
static_assert
(	(p	and	q	or	!p	and	r)
<=>	(q	and	p	or	!p	and	r)
);
static_assert
(	(p	and	q	or	!p	and	r)
<=>	(q	and	p	or	r	and	!p)
);

static_assert
(	(p	and	q	or	!p	and	r)
<=>	(!p	and	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	r)
<=>	(!p	and	r	or	q	and	p)
);
static_assert
(	(p	and	q	or	!p	and	r)
<=>	(r	and	!p	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	r)
<=>	(r	and	!p	or	q	and	p)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q	and	r)
/// ****************************************************************************
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(p	and	q	or	!p	and	!q	and	r)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(p	and	q	or	!p	and	r	and	!q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(p	and	q	or	!q	and	!p	and	r)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(p	and	q	or	!q	and	r	and	!p)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(p	and	q	or	r	and	!p	and	!q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(p	and	q	or	r	and	!q	and	!p)
);

static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(q	and	p	or	!p	and	!q	and	r)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(q	and	p	or	!p	and	r	and	!q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(q	and	p	or	!q	and	!p	and	r)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(q	and	p	or	!q	and	r	and	!p)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(q	and	p	or	r	and	!p	and	!q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(q	and	p	or	r	and	!q	and	!p)
);


static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(!p	and	!q	and	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(!p	and	!q	and	r	or	q	and	p)
);

static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(!p	and	r	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(!p	and	r	and	!q	or	q	and	p)
);

static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(!q	and	!p	and	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(!q	and	!p	and	r	or	q	and	p)
);

static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(!q	and	r	and	!p	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(!q	and	r	and	!p	or	q	and	p)
);

static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(r	and	!p	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(r	and	!p	and	!q	or	q	and	p)
);

static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(r	and	!q	and	!p	or	p	and	q)
);
static_assert
(	(p	and	q	or	!p	and	!q	and	r)
<=>	(r	and	!q	and	!p	or	q	and	p)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	r)
/// ****************************************************************************
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	q	and	r	or	!p	and	!q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	q	and	r	or	!p	and	r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	q	and	r	or	!q	and	!p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	q	and	r	or	!q	and	r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	q	and	r	or	r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	q	and	r	or	r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	r	and	q	or	!p	and	!q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	r	and	q	or	!p	and	r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	r	and	q	or	!q	and	!p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	r	and	q	or	!q	and	r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	r	and	q	or	r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(p	and	r	and	q	or	r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	p	and	r	or	!p	and	!q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	p	and	r	or	!p	and	r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	p	and	r	or	!q	and	!p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	p	and	r	or	!q	and	r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	p	and	r	or	r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	p	and	r	or	r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	r	and	p	or	!p	and	!q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	r	and	p	or	!p	and	r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	r	and	p	or	!q	and	!p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	r	and	p	or	!q	and	r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	r	and	p	or	r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(q	and	r	and	p	or	r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	p	and	q	or	!p	and	!q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	p	and	q	or	!p	and	r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	p	and	q	or	!q	and	!p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	p	and	q	or	!q	and	r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	p	and	q	or	r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	p	and	q	or	r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	q	and	p	or	!p	and	!q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	q	and	p	or	!p	and	r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	q	and	p	or	!q	and	!p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	q	and	p	or	!q	and	r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	q	and	p	or	r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	q	and	p	or	r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	!q	and	r	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	!q	and	r	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	!q	and	r	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	!q	and	r	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	!q	and	r	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	!q	and	r	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	r	and	!q	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	r	and	!q	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	r	and	!q	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	r	and	!q	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	r	and	!q	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!p	and	r	and	!q	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	!p	and	r	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	!p	and	r	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	!p	and	r	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	!p	and	r	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	!p	and	r	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	!p	and	r	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	r	and	!p	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	r	and	!p	or	p	and	r	and	q)
);
static_assert
(	(!p	and	!q	and	r	or	p	and	q	and	r)
<=>	(!q	and	r	and	!p	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	r	and	!p	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	r	and	!p	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(!q	and	r	and	!p	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!p	and	!q	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!p	and	!q	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!p	and	!q	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!p	and	!q	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!p	and	!q	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!p	and	!q	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!q	and	!p	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!q	and	!p	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!q	and	!p	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!q	and	!p	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!q	and	!p	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	r)
<=>	(r	and	!q	and	!p	or	r	and	q	and	p)
);
/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ****************************************************************************
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	q	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	q	and	r	or	!p	and	!r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	q	and	r	or	!q	and	!p	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	q	and	r	or	!q	and	!r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	q	and	r	or	!r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	q	and	r	or	!r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	r	and	q	or	!p	and	!q	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	r	and	q	or	!p	and	!r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	r	and	q	or	!q	and	!p	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	r	and	q	or	!q	and	!r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	r	and	q	or	!r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(p	and	r	and	q	or	!r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	p	and	r	or	!p	and	!q	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	p	and	r	or	!p	and	!r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	p	and	r	or	!q	and	!p	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	p	and	r	or	!q	and	!r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	p	and	r	or	!r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	p	and	r	or	!r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	r	and	p	or	!p	and	!q	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	r	and	p	or	!p	and	!r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	r	and	p	or	!q	and	!p	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	r	and	p	or	!q	and	!r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	r	and	p	or	!r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(q	and	r	and	p	or	!r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	p	and	q	or	!p	and	!q	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	p	and	q	or	!p	and	!r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	p	and	q	or	!q	and	!p	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	p	and	q	or	!q	and	!r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	p	and	q	or	!r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	p	and	q	or	!r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	q	and	p	or	!p	and	!q	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	q	and	p	or	!p	and	!r	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	q	and	p	or	!q	and	!p	and	!r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	q	and	p	or	!q	and	!r	and	!p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	q	and	p	or	!r	and	!p	and	!q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(r	and	q	and	p	or	!r	and	!q	and	!p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!q	and	!r	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!q	and	!r	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!q	and	!r	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!q	and	!r	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!q	and	!r	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!q	and	!r	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!r	and	!q	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!r	and	!q	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!r	and	!q	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!r	and	!q	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!r	and	!q	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!p	and	!r	and	!q	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!p	and	!r	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!p	and	!r	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!p	and	!r	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!p	and	!r	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!p	and	!r	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!p	and	!r	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!r	and	!p	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!r	and	!p	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!r	and	!p	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!r	and	!p	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!r	and	!p	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!q	and	!r	and	!p	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!p	and	!q	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!p	and	!q	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!p	and	!q	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!p	and	!q	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!p	and	!q	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!p	and	!q	or	r	and	q	and	p)
);

static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!q	and	!p	or	p	and	q	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!q	and	!p	or	p	and	r	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!q	and	!p	or	q	and	p	and	r)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!q	and	!p	or	q	and	r	and	p)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!q	and	!p	or	r	and	p	and	q)
);
static_assert
(	(p	and	q	and	r	or	!p	and	!q	and	!r)
<=>	(!r	and	!q	and	!p	or	r	and	q	and	p)
);
/// ****************************************************************************
///	(p	and	q	or	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(p	and	q	or	r	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(p	and	q	or	r	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(q	and	p	or	r	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(q	and	p	or	r	or	!q	and	!p)
);

static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(p	and	q	or	!p	and	!q	or	r)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(p	and	q	or	!q	and	!p	or	r)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(q	and	p	or	!p	and	!q	or	r)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(q	and	p	or	!q	and	!p	or	r)
);

static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(r	or	p	and	q	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(r	or	p	and	q	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(r	or	q	and	p	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(r	or	q	and	p	or	!q	and	!p)
);

static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(r	or	!p	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(r	or	!q	and	!p	or	p	and	q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(r	or	!p	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(r	or	!q	and	!p	or	p	and	q)
);

static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	q	or	r)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	q	or	r)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	q	or	r)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	q	or	r)
);

static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(!p	and	!q	or	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(!q	and	!p	or	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(!p	and	!q	or	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	r	or	!p	and	!q)
<=>	(!q	and	!p	or	r	or	p	and	q)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	p	and	r	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	p	and	r	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	r	and	p	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	r	and	p	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	p	and	r	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	p	and	r	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	r	and	p	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	r	and	p	or	!q	and	!p)
);

static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	!p	and	!q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	!q	and	!p	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	!p	and	!q	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	!q	and	!p	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	!p	and	!q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	!q	and	!p	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	!p	and	!q	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	!q	and	!p	or	r	and	p)
);

static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	r	or	p	and	q	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	r	or	p	and	q	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(r	and	p	or	p	and	q	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(r	and	p	or	p	and	q	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	r	or	q	and	p	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	r	or	q	and	p	or	!q	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(r	and	p	or	q	and	p	or	!p	and	!q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(r	and	p	or	q	and	p	or	!q	and	!p)
);

static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	r	or	!p	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	r	or	!q	and	!p	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(r	and	p	or	!p	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(r	and	p	or	!q	and	!p	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	r	or	!p	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	r	or	!q	and	!p	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(r	and	p	or	!p	and	!q	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(r	and	p	or	!q	and	!p	or	p	and	q)
);

static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	q	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	q	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	q	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	q	or	r	and	p)
);

static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!p	and	!q	or	r	and	p	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!q	and	!p	or	r	and	p	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!p	and	!q	or	p	and	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!q	and	!p	or	p	and	r	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!p	and	!q	or	r	and	p	or	p	and	q)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(!q	and	!p	or	r	and	p	or	p	and	q)
);


/// ****************************************************************************
///	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
/// ****************************************************************************
static_assert
(	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	p	and	r or	!p	and	!q	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	p	and	r	or	!q	and	!p	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	p	and	r	or	!q	and	!p	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	r	and	p	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	r	and	p	or	!p	and	!q	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	r	and	p	or	!q	and	!p	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	r	and	p	or	!q	and	!p	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	p	and	r	or	!p	and	!q	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	p	and	r	or	!q	and	!p	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	p	and	r	or	!q	and	!p	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	r	and	p	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	r	and	p	or	!p	and	!q	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	r	and	p	or	!q	and	!p	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	r	and	p	or	!q	and	!p	or	!r	and	!p)
);

static_assert
(	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	p	and	r or	!p	and	!q	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	p	and	r	or	!q	and	!p	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	p	and	r	or	!q	and	!p	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	r	and	p	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	r	and	p	or	!p	and	!q	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	r	and	p	or	!q	and	!p	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(p	and	q	or	r	and	p	or	!q	and	!p	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	p	and	r	or	!p	and	!q	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	p	and	r	or	!q	and	!p	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	p	and	r	or	!q	and	!p	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	r	and	p	or	!p	and	!q	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	r	and	p	or	!p	and	!q	or	!r	and	!p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	r	and	p	or	!q	and	!p	or	!p	and	!r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q	or	!p	and	!r)
<=>	(q	and	p	or	r	and	p	or	!q	and	!p	or	!r	and	!p)
);


static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	!p	and	!q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	!q	and	!p	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	!p	and	!q	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(p	and	q	or	!q	and	!p	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	!p	and	!q	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	!q	and	!p	or	p	and	r)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	!p	and	!q	or	r	and	p)
);
static_assert
(	(p	and	q	or	p	and	r	or	!p	and	!q)
<=>	(q	and	p	or	!q	and	!p	or	r	and	p)
);
