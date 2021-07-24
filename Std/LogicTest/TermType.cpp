#include "Shared.hpp"

///	Conjunction 1 x 2
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

///	Disjunction 1 x 2
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

///	Conjunction 2 x 1
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

///	Disjunction 2 x 1
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

//	Conjunction 2 x 2
static_assert(ExpectType<
	*	((p	or	q)	and	(p	or	r))
,	Or <Atom<P>, And<Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(p	or	r))
,	And<Or <Atom<P>, Atom<Q>>, Or <Atom<P>, Atom<R>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(p	or	r))
,	Or <And<Not <P>, Not <Q>>, And<Not <P>, Not <R>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(p	or	r))
,	And<Or <Not <P>, Not <Q>>, Or <Not <P>, Not <R>>>
>);

static_assert(ExpectOneType<	//	Order may change in future refactoring
	*	((p	or	q)	and	(!p	or	!q))
,	Or <And<Atom<P>, Not <Q>>, And<Atom<Q>, Not <P>>>
,	Or <And<Atom<Q>, Not <P>>, And<Atom<P>, Not <Q>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(!p	or	!q))
,	And<Or <Atom<P>, Atom<Q>>, Or <Not <P>, Not <Q>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(!p	or	!q))
,	Or <And<Not <P>, Not <Q>>, And<Atom<P>, Atom<Q>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(!p	or	!q))
,	And<Or <Not <P>, Not <Q>>, Or <Atom<P>, Atom<Q>>>
>);

static_assert(ExpectOneType<	//	Order may change in future refactoring
	*	((p	or	q)	and	(!p	or	r))
,	Or <And<Atom<Q>, Not <P>>, And<Atom<P>, Atom<R>>>
,	Or <And<Atom<P>, Atom<R>>, And<Atom<Q>, Not <P>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(!p	or	r))
,	And<Or <Atom<P>, Atom<Q>>, Or <Not <P>, Atom<R>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(!p	or	r))
,	Or <And<Not <P>, Not <Q>>, And<Atom<P>, Not <R>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(!p	or	r))
,	And<Or <Not <P>, Not <Q>>, Or <Atom<P>, Not <R>>>
>);

static_assert(ExpectOneType<	//	Order may change in future refactoring
	*	((p	or	q)	and	(q	or	r))
,	Or <Atom<Q>, And<Atom<P>, Atom<R>>>
,	Or <And<Atom<P>, Atom<R>>, Atom<Q>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(q	or	r))
,	And<Or <Atom<P>, Atom<Q>>, Or <Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(q	or	r))
,	Or <And<Not <P>, Not <Q>>, And<Not <Q>, Not <R>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(q	or	r))
,	And<Or <Not <P>, Not <Q>>, Or <Not <Q>, Not <R>>>
>);

static_assert(ExpectType<
	*	((p	or	q)	and	(!q	or	!p))
,	Or <And<Atom<P>, Not <Q>>, And<Atom<Q>, Not <P>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(!q	or !p))
,	And<Or <Atom<P>, Atom<Q>>, Or <Not <Q>, Not <P>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(!q	or	!p))
,	Or <And<Not <P>, Not <Q>>, And<Atom<Q>, Atom<P>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(!q	or	!p))
,	And<Or <Not <P>, Not <Q>>, Or <Atom<Q>, Atom<P>>>
>);

static_assert(ExpectType<
	*	((p	or	q)	and	(!q	or	r))
,	Or <And<Atom<P>, Not <Q>>, And<Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(!q	or	r))
,	And<Or <Atom<P>, Atom<Q>>, Or <Not <Q>, Atom<R>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(!q	or	r))
,	Or <And<Not <P>, Not <Q>>, And<Atom<Q>, Not <R>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(!q	or	r))
,	And<Or <Not <P>, Not <Q>>, Or <Atom<Q>, Not <R>>>
>);

static_assert(ExpectOneType< // Order may change in future refactoring
	*	((p	or	q)	and	(r	or	p))
,	Or <Atom<P>, And<Atom<Q>, Atom<R>>>
,	Or <And<Atom<Q>, Atom<R>>, Atom<P>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(r	or	p))
,	And<Or <Atom<P>, Atom<Q>>, Or <Atom<R>, Atom<P>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(r	or	p))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Not <P>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(r	or	p))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Not <P>>>
>);

static_assert(ExpectType<
	*	((p	or	q)	and	(r	or	!p))
,	Or <And<Atom<P>, Atom<R>>, And<Atom<Q>, Not <P>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(r	or	!p))
,	And<Or <Atom<P>, Atom<Q>>, Or <Atom<R>, Not<P>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(r	or	!p))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Atom<P>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(r	or	!p))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Atom<P>>>
>);

static_assert(ExpectType<
	*	((p	or	q)	and	(r	or	q))
,	Or <And<Atom<P>, Atom<R>>, Atom<Q>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(r	or	q))
,	And<Or <Atom<P>, Atom<Q>>, Or <Atom<R>, Atom<Q>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(r	or	q))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Not <Q>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(r	or	q))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Not <Q>>>
>);

static_assert(ExpectOneType< // Order may change in future refactoring
	*	((p	or	q)	and	(r	or	!q))
,	Or <And<Atom<P>, Not <Q>>, And<Atom<Q>, Atom<R>>>
,	Or <And<Atom<Q>, Atom<R>>, And<Atom<P>, Not <Q>>>
>);
static_assert(ExpectType<
	+	((p	or	q)	and	(r	or	!q))
,	And<Or <Atom<P>, Atom<Q>>, Or <Atom<R>, Not <Q>>>
>);
static_assert(ExpectType<
	!	((p	or	q)	and	(r	or	!q))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Atom<Q>>>
>);
static_assert(ExpectType<
	~	((p	or	q)	and	(r	or	!q))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Atom<Q>>>
>);

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

///	Disjunction 2 x 2
static_assert(ExpectType<
	*	((p	and	q)	or	(p	and	r))
,	Or <And<Atom<P>, Atom<Q>>, And<Atom<P>, Atom<R>>>
>);
static_assert(ExpectType<
	+	((p	and	q)	or	(p	and	r))
,	And<Atom<P>, Or <Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(p	and	r))
,	And<Or <Not <P>, Not <Q>>, Or <Not <P>, Not <R>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(p	and	r))
,	Or <And<Not <P>, Not <Q>>, And<Not <P>, Not <R>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(!p	and	!q))
,	Or <And<Atom<P>, Atom<Q>>, And<Not <P>, Not <Q>>>
>);
static_assert(ExpectOneType<	//	Order may change in future refactanding
	+	((p	and	q)	or	(!p	and	!q))
,	And<Or <Atom<P>, Not <Q>>, Or <Atom<Q>, Not <P>>>
,	And<Or <Atom<Q>, Not <P>>, Or <Atom<P>, Not <Q>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(!p	and	!q))
,	And<Or <Not <P>, Not <Q>>, Or <Atom<P>, Atom<Q>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(!p	and	!q))
,	Or <And<Not <P>, Not <Q>>, And<Atom<P>, Atom<Q>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(!p	and	r))
,	Or <And<Atom<P>, Atom<Q>>, And<Not <P>, Atom<R>>>
>);
static_assert(ExpectOneType<	//	Order may change in future refactanding
	+	((p	and	q)	or	(!p	and	r))
,	And<Or <Atom<Q>, Not <P>>, Or <Atom<P>, Atom<R>>>
,	And<Or <Atom<P>, Atom<R>>, Or <Atom<Q>, Not <P>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(!p	and	r))
,	And<Or <Not <P>, Not <Q>>, Or <Atom<P>, Not <R>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(!p	and	r))
,	Or <And<Not <P>, Not <Q>>, And<Atom<P>, Not <R>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(q	and	r))
,	Or <And<Atom<P>, Atom<Q>>, And<Atom<Q>, Atom<R>>>
>);
static_assert(ExpectOneType<	//	Order may change in future refactanding
	+	((p	and	q)	or	(q	and	r))
,	And<Atom<Q>, Or <Atom<P>, Atom<R>>>
,	And<Or <Atom<P>, Atom<R>>, Atom<Q>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(q	and	r))
,	And<Or <Not <P>, Not <Q>>, Or <Not <Q>, Not <R>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(q	and	r))
,	Or <And<Not <P>, Not <Q>>, And<Not <Q>, Not <R>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(!q	and !p))
,	Or <And<Atom<P>, Atom<Q>>, And<Not <Q>, Not <P>>>
>);
static_assert(ExpectType<
	+	((p	and	q)	or	(!q	and	!p))
,	And<Or <Atom<P>, Not <Q>>, Or <Atom<Q>, Not <P>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(!q	and	!p))
,	And<Or <Not <P>, Not <Q>>, Or <Atom<Q>, Atom<P>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(!q	and	!p))
,	Or <And<Not <P>, Not <Q>>, And<Atom<Q>, Atom<P>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(!q	and	r))
,	Or <And<Atom<P>, Atom<Q>>, And<Not <Q>, Atom<R>>>
>);
static_assert(ExpectType<
	+	((p	and	q)	or	(!q	and	r))
,	And<Or <Atom<P>, Not <Q>>, Or <Atom<Q>, Atom<R>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(!q	and	r))
,	And<Or <Not <P>, Not <Q>>, Or <Atom<Q>, Not <R>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(!q	and	r))
,	Or <And<Not <P>, Not <Q>>, And<Atom<Q>, Not <R>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(r	and	p))
,	Or <And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<P>>>
>);
static_assert(ExpectOneType< // Order may change in future refactanding
	+	((p	and	q)	or	(r	and	p))
,	And<Atom<P>, Or <Atom<Q>, Atom<R>>>
,	And<Or <Atom<Q>, Atom<R>>, Atom<P>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(r	and	p))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Not <P>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(r	and	p))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Not <P>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(r	and	!p))
,	Or <And<Atom<P>, Atom<Q>>, And<Atom<R>, Not<P>>>
>);
static_assert(ExpectType<
	+	((p	and	q)	or	(r	and	!p))
,	And<Or <Atom<P>, Atom<R>>, Or <Atom<Q>, Not <P>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(r	and	!p))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Atom<P>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(r	and	!p))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Atom<P>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(r	and	q))
,	Or <And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<Q>>>
>);
static_assert(ExpectType<
	+	((p	and	q)	or	(r	and	q))
,	And<Or <Atom<P>, Atom<R>>, Atom<Q>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(r	and	q))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Not <Q>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(r	and	q))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Not <Q>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(r	and	!q))
,	Or <And<Atom<P>, Atom<Q>>, And<Atom<R>, Not <Q>>>
>);
static_assert(ExpectOneType< // Order may change in future refactanding
	+	((p	and	q)	or	(r	and	!q))
,	And<Or <Atom<P>, Not <Q>>, Or <Atom<Q>, Atom<R>>>
,	And<Or <Atom<Q>, Atom<R>>, Or <Atom<P>, Not <Q>>>
>);
static_assert(ExpectType<
	!	((p	and	q)	or	(r	and	!q))
,	And<Or <Not <P>, Not <Q>>, Or <Not <R>, Atom<Q>>>
>);
static_assert(ExpectType<
	~	((p	and	q)	or	(r	and	!q))
,	Or <And<Not <P>, Not <Q>>, And<Not <R>, Atom<Q>>>
>);

static_assert(ExpectType<
	*	((p	and	q)	or	(r	and	s))
,	Or <And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>
>);
static_assert(ExpectOneType< // Order may change in future refactanding
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
