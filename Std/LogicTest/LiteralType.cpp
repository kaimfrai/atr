#include "Shared.hpp"

///	Positive
static_assert(ExpectType<
	*	p
,	Atom<P>
>);
static_assert(ExpectType<
	+	p
,	Atom<P>
>);
static_assert(ExpectType<
	!	p
,	Not <P>
>);
static_assert(ExpectType<
	~	p
,	Not <P>
>);

///	Negative
static_assert(ExpectType<
	*	!p
,	Not <P>
>);
static_assert(ExpectType<
	+	!p
,	Not <P>
>);
static_assert(ExpectType<
	!	!p
,	Atom<P>
>);
static_assert(ExpectType<
	~	!p
,	Atom<P>
>);
