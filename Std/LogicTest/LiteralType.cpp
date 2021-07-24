#include "Shared.hpp"

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
