#include "Shared.hpp"

///	True
static_assert(ExpectType<
	*	T
,	True
>);
static_assert(ExpectType<
	+	T
,	True
>);
static_assert(ExpectType<
	!	T
,	False
>);
static_assert(ExpectType<
	~	T
,	False
>);

///	False
static_assert(ExpectType<
	*	F
,	False
>);
static_assert(ExpectType<
	+	F
,	False
>);
static_assert(ExpectType<
	!	F
,	True
>);
static_assert(ExpectType<
	~	F
,	True
>);
