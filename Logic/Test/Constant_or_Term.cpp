#include "Shared.hpp"

/// ****************************************************************************
///	(p	or	q)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	or	q)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	or	q)
	)
==	(p	or	q)
);

/// ****************************************************************************
///	(p	or	q	or	r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	or	q	or	r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	or	q	or	r)
	)
==	(p	or	q	or	r)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	or	p	and	r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	or	p	and	r)
	)
==	(p	and	q	or	p	and	r)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	or	p	and	r	or	!p	and	!q)
	)
==	(p	and	q	or	p	and	r	or	!p	and	!q)
);

/// ****************************************************************************
///	(p	and	q	or	p	and	r	or	q	and	r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	or	p	and	r	or	q	and	r)
	)
==	(p	and	q	or	p	and	r	or	q	and	r)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	or	!p	and	!q)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	or	!p	and	!q)
	)
==	(p	and	q	or	!p	and	!q)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	!q	or	r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	or	!p	and	!q	or	r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	or	!p	and	!q	or	r)
	)
==	(p	and	q	or	!p	and	!q	or	r)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	or	!p	and	r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	or	!p	and	r)
	)
==	(p	and	q	or	!p	and	r)
);

/// ****************************************************************************
///	(p	and	q	or	!p	and	r	or	!q	and	!r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	or	!p	and	r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	or	!p	and	r	or	!q	and	!r)
	)
==	(p	and	q	or	!p	and	r	or	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	or	r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	or	r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	or	r)
	)
==	(p	and	q	or	r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	and	r	or	p	and	!q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
	)
==	(p	and	q	and	r	or	p	and	!q	and	!r	or	!p	and	q	and	!r)
);

/// ****************************************************************************
///	(	p	and	q	and	r
///	or	p	and	!q	and	!r
///	or	!p	and	q	and	!r
///	or	!p	and	!q	and	r
///	)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(	p	and	q	and	r
		or	p	and	!q	and	!r
		or	!p	and	q	and	!r
		or	!p	and	!q	and	r
		)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(	p	and	q	and	r
		or	p	and	!q	and	!r
		or	!p	and	q	and	!r
		or	!p	and	!q	and	r
		)
	)
==	(	p	and	q	and	r
	or	p	and	!q	and	!r
	or	!p	and	q	and	!r
	or	!p	and	!q	and	r
	)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	and	r	or	!p	and	!q)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	and	r	or	!p	and	!q)
	)
==	(p	and	q	and	r	or	!p	and	!q)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	or	!p	and	!r	or	!q	and	!r)
);

/// ****************************************************************************
///	(p	and	q	and	r	or	!p	and	!q	and	!r)
/// ****************************************************************************
static_assert
(	(	(T)
	or	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(T)
);
static_assert
(	(	(F)
	or	(p	and	q	and	r	or	!p	and	!q	and	!r)
	)
==	(p	and	q	and	r	or	!p	and	!q	and	!r)
);
