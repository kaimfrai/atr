#include "Shared.hpp"

static_assert(ExpectType<
	+	(p	and	q)
,	And<Atom<P>, Atom<Q>>
>);
static_assert(ExpectType<
	*	(p	and	q)
,	And<Atom<P>, Atom<Q>>
>);
static_assert(ExpectType<
	!	(p	and	q)
,	Or <Not <P>, Not <Q>>
>);
static_assert(ExpectType<
	~	(p	and	q)
,	And<Not <P>, Not <Q>>
>);

static_assert(ExpectType<
	+	(p	or	q)
,	Or <Atom<P>, Atom<Q>>
>);
static_assert(ExpectType<
	*	(p	or	q)
,	Or <Atom<P>, Atom<Q>>
>);
static_assert(ExpectType<
	!	(p	or	q)
,	And<Not <P>, Not <Q>>
>);
static_assert(ExpectType<
	~	(p	or	q)
,	Or <Not <P>, Not <Q>>
>);
