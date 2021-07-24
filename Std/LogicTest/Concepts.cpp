#include "Shared.hpp"

static_assert( ProtoAtom<			P	>);
static_assert(!ProtoTerm<			P	>);
static_assert(!ProtoConjunction<	P	>);
static_assert(!ProtoConjunctive<	P	>);
static_assert(!ProtoDisjunction<	P	>);
static_assert(!ProtoDisjunctive<	P	>);
static_assert(!ProtoLiteral<		P	>);
static_assert(!ProtoConstant<		P	>);

static_assert(!ProtoAtom<			True	>);
static_assert( ProtoTerm<			True	>);
static_assert( ProtoConjunction<	True	>);
static_assert( ProtoConjunctive<	True	>);
static_assert( ProtoDisjunction<	True	>);
static_assert( ProtoDisjunctive<	True	>);
static_assert( ProtoLiteral<		True	>);
static_assert( ProtoConstant<		True	>);

static_assert(!ProtoAtom<			False	>);
static_assert( ProtoTerm<			False	>);
static_assert( ProtoConjunction<	False	>);
static_assert( ProtoConjunctive<	False	>);
static_assert( ProtoDisjunction<	False	>);
static_assert( ProtoDisjunctive<	False	>);
static_assert( ProtoLiteral<		False	>);
static_assert( ProtoConstant<		False	>);

static_assert(!ProtoAtom<			Atom<P>	>);
static_assert( ProtoTerm<			Atom<P>	>);
static_assert( ProtoConjunction<	Atom<P>	>);
static_assert( ProtoConjunctive<	Atom<P>	>);
static_assert( ProtoDisjunction<	Atom<P>	>);
static_assert( ProtoDisjunctive<	Atom<P>	>);
static_assert( ProtoLiteral<		Atom<P>	>);
static_assert(!ProtoConstant<		Atom<P>	>);

static_assert(!ProtoAtom<			Not<P>	>);
static_assert( ProtoTerm<			Not<P>	>);
static_assert( ProtoConjunction<	Not<P>	>);
static_assert( ProtoConjunctive<	Not<P>	>);
static_assert( ProtoDisjunction<	Not<P>	>);
static_assert( ProtoDisjunctive<	Not<P>	>);
static_assert( ProtoLiteral<		Not<P>	>);
static_assert(!ProtoConstant<		Not<P>	>);

static_assert(!ProtoAtom<			And<Atom<P>, Atom<Q>>	>);
static_assert( ProtoTerm<			And<Atom<P>, Atom<Q>>	>);
static_assert( ProtoConjunction<	And<Atom<P>, Atom<Q>>	>);
static_assert( ProtoConjunctive<	And<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoDisjunction<	And<Atom<P>, Atom<Q>>	>);
static_assert( ProtoDisjunctive<	And<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoLiteral<		And<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoConstant<		And<Atom<P>, Atom<Q>>	>);

static_assert(!ProtoAtom<			And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoTerm<			And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoConjunction<	And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoConjunctive<	And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoDisjunction<	And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoDisjunctive<	And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoLiteral<		And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoConstant<		And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);

static_assert(!ProtoAtom<			And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert( ProtoTerm<			And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert( ProtoConjunction<	And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert( ProtoConjunctive<	And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoDisjunction<	And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoDisjunctive<	And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoLiteral<		And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoConstant<		And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);

static_assert(!ProtoAtom<			Or<Atom<P>, Atom<Q>>	>);
static_assert( ProtoTerm<			Or<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoConjunction<	Or<Atom<P>, Atom<Q>>	>);
static_assert( ProtoConjunctive<	Or<Atom<P>, Atom<Q>>	>);
static_assert( ProtoDisjunction<	Or<Atom<P>, Atom<Q>>	>);
static_assert( ProtoDisjunctive<	Or<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoLiteral<		Or<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoConstant<		Or<Atom<P>, Atom<Q>>	>);

static_assert(!ProtoAtom<			Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoTerm<			Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoConjunction<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoConjunctive<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoDisjunction<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoDisjunctive<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoLiteral<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoConstant<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);

static_assert(!ProtoAtom<			Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert( ProtoTerm<			Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoConjunction<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoConjunctive<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert( ProtoDisjunction<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert( ProtoDisjunctive<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoLiteral<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoConstant<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
