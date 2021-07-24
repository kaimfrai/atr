#include "Shared.hpp"

//	Term 1 x 2
static_assert(ExpectType<
	*	(p	and	(q	or	r))
,	Or <And<Atom<P>, Atom<Q>>, And<Atom<P>, Atom<R>>>
>);
static_assert(ExpectType<
	+	(p	and	(q	or	r))
,	And<Atom<P>, Or <Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	!	(p	and	(q	or	r))
,	Or <Not <P>, And<Not <Q>, Not <R>>>
>);
static_assert(ExpectType<
	~	(p	and	(q	or	r))
,	And<Not <P>, Or <Not <Q>, Not <R>>>
>);

static_assert(ExpectType<
	*	(p	or	(q	and	r))
,	Or <Atom<P>, And<Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	+	(p	or	(q	and	r))
,	And<Or <Atom<P>, Atom<Q>>, Or <Atom<P>, Atom<R>>>
>);
static_assert(ExpectType<
	!	(p	or	(q	and	r))
,	And<Not <P>, Or <Not <Q>, Not <R>>>
>);
static_assert(ExpectType<
	~	(p	or	(q	and	r))
,	Or <Not <P>, And<Not <Q>, Not <R>>>
>);

//	Term 2 x 1
static_assert(ExpectType<
	*	((p	or	q)	and	r)
,	Or<And <Atom<P>, Atom<R>>, And <Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	r)
,	And<Or <Atom<P>, Atom<Q>>, Atom<R>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	r)
,	Or <And<Not <P>, Not <Q>>, Not <R>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	r)
,	And<Or<Not <P>, Not <Q>>, Not <R>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	r)
,	Or <And<Atom<P>, Atom<Q>>, Atom<R>>
>);
static_assert(ExpectType<
	+	((p	and	q)	or	r)
,	And<Or <Atom<P>, Atom<R>>, Or <Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	r)
,	And<Or <Not <P>, Not <Q>>, Not <R>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	r)
,	Or <And<Not <P>, Not <Q>>, Not <R>>
>);

//	Term 2 x 2
static_assert(ExpectOneType< // Order may change in future refactoring
	*	((p	or	q)	and	(r	or	s))
,	Or <And<Atom<P>, Atom<R>>, And<Atom<Q>, Atom<R>>, And<Atom<P>, Atom<S>>, And<Atom<Q>, Atom<S>>>
,	Or <And<Atom<P>, Atom<R>>, And<Atom<P>, Atom<S>>, And<Atom<Q>, Atom<R>>, And<Atom<Q>, Atom<S>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(r	or	s))
,	And<Or <Atom<P>, Atom<Q>>, Or <Atom<R>, Atom<S>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(r	or	s))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Not <S>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(r	or	s))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Not <S>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(r	and	s))
,	Or <And<Atom<P>, Atom<Q>> , And<Atom<R>, Atom<S>>>
>);
static_assert(ExpectOneType< // Order may change in future refactoring
	+	((p	and	q)	or	(r	and	s))
,	And<Or <Atom<P>, Atom<R>>, Or <Atom<Q>, Atom<R>>, Or <Atom<P>, Atom<S>>, Or <Atom<Q>, Atom<S>>>
,	And<Or <Atom<P>, Atom<R>>, Or <Atom<P>, Atom<S>>, Or <Atom<Q>, Atom<R>>, Or <Atom<Q>, Atom<S>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(r	and	s))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Not <S>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(r	and	s))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Not <S>>>
>);
