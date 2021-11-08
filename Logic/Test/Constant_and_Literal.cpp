#include "Shared.hpp"

/// ************************************************************************************************
///	(p)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(p)
	)
==	(p)
);
static_assert
(	(	(F)
	and	(p)
	)
==	(F)
);

/// ************************************************************************************************
///	(!p)
/// ************************************************************************************************
static_assert
(	(	(T)
	and	(!p)
	)
==	(!p)
);
static_assert
(	(	(F)
	and	(!p)
	)
==	(F)
);
