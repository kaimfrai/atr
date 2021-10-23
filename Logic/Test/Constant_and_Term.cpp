#include "Shared.hpp"

/// ****************************************************************************
///	(p	or	q)
/// ****************************************************************************
static_assert
(	(T	and	(p	or	q))	==	(p	or	q)
);
static_assert
(	(F	and	(p	or	q))	==	(F)
);

/// ****************************************************************************
///	(p	or	q	or	r)
/// ****************************************************************************
static_assert
(	(T	and	(p	or	q	or	r))	==	(p	or	q	or	r)
);
static_assert
(	(F	and	(p	or	q	or	r))	==	(F)
);

/// ****************************************************************************
///	(p	or	q	and	r)
/// ****************************************************************************
static_assert
(	(T	and	(p	or	q	and	r))	==	(p	or	q	and	r)
);
static_assert
(	(F	and	(p	or	q	and	r))	==	(F)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r)
/// ****************************************************************************
static_assert
(	(T	and	(p	and	q	or	p	and	r))	==	(p	and	q	or	p	and	r)
);
static_assert
(	(F	and	(p	and	q	or	p	and	r))	==	(F)
);
