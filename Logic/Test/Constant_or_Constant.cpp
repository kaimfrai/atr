#include "Shared.hpp"

/// ****************************************************************************
///	(T)
/// ****************************************************************************
static_assert
(	(T	or	T)	==	(T)
);
static_assert
(	(F	or	T)	==	(T)
);

/// ****************************************************************************
///	(F)
/// ****************************************************************************
static_assert
(	(T	or	F)	==	(T)
);
static_assert
(	(F	or	F)	==	(F)
);
