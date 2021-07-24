#pragma once

#include "Logic.hpp"

#include <type_traits>

namespace
{
	True constexpr inline T{};
	False constexpr inline F{};

	struct P : AtomBase<P> {} constexpr inline p{};
	struct Q : AtomBase<Q> {} constexpr inline q{};
	struct R : AtomBase<R> {} constexpr inline r{};
	struct S : AtomBase<S> {} constexpr inline s{};

	template
		<	ProtoTerm auto
				t_vTerm
		,	ProtoTerm
				t_tExpected
		>
	bool constexpr
		ExpectType
	=	std::is_same_v
		<	decltype(t_vTerm)
		,	t_tExpected
		>
	;

	template
		<	ProtoTerm auto
				t_vTerm
		,	ProtoTerm
			...	t_tpExpected
		>
	bool constexpr
		ExpectOneType
	=	(	...
		or	ExpectType
			<	t_vTerm
			,	t_tpExpected
			>
		)
	;
}

namespace
	// Concept Test
{
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
}

namespace
	// Literal Type Test
{
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
	,	Not<P>
	>);
	static_assert(ExpectType<
		~	p
	,	Not<P>
	>);

	static_assert(ExpectType<
		*	!p
	,	Not<P>
	>);
	static_assert(ExpectType<
		+	!p
	,	Not<P>
	>);
	static_assert(ExpectType<
		!	!p
	,	Atom<P>
	>);
	static_assert(ExpectType<
		~	!p
	,	Atom<P>
	>);
}

namespace
	// Clause Type Test
{
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
}

namespace
	// Term 1x2 Type Test
{
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
}

namespace
	// Term 2x1 Type Test
{
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
}

namespace
	// Term 2x2 Type Test
{
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
};

namespace
	// True Operand Test
{
	static_assert
	(	(T	and	T)
	==	(T)
	);
	static_assert
	(	(T	and	F)
	==	(F)
	);
	static_assert
	(	(T	and	p)
	==	(p)
	);

	static_assert
	(	(T	and	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(T	and	(p	and	(q	or	r)))
	==	(p	and	(q	or	r))
	);
	static_assert
	(	(T	and	((p	and	q)	or	r))
	==	((p	and	q)	or	r)
	);
	static_assert
	(	(T	and	((p	and	q)	or	(r	and	s)))
	==	((p	and	q)	or	(r	and	s))
	);

	static_assert
	(	(T	and	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(T	and	(p	or	(q	and	r)))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	(T	and	((p	or	q)	and	r))
	==	((p	or	q)	and	r)
	);
	static_assert
	(	(T	and	((p	or	q)	and	(r	or	s)))
	==	((p	or	q)	and	(r	or	s))
	);

	static_assert
	(	(T	*	T)
	==	(T)
	);
	static_assert
	(	(T	*	F)
	==	(F)
	);
	static_assert
	(	(T	*	p)
	==	(p)
	);

	static_assert
	(	(T	*	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(T	*	(p	and	(q	or	r)))
	==	(p	and	(q	or	r))
	);
	static_assert
	(	(T	*	((p	and	q)	or	r))
	==	((p	and	q)	or	r)
	);
	static_assert
	(	(T	*	((p	and	q)	or	(r	and	s)))
	==	((p	and	q)	or	(r	and	s))
	);

	static_assert
	(	(T	*	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(T	*	(p	or	(q	and	r)))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	(T	*	((p	or	q)	and	r))
	==	((p	or	q)	and	r)
	);
	static_assert
	(	(T	*	((p	or	q)	and	(r	or	s)))
	==	((p	or	q)	and	(r	or	s))
	);

	static_assert
	(	(T	or	T)
	==	(T)
	);
	static_assert
	(	(T	or	F)
	==	(T)
	);
	static_assert
	(	(T	or	p)
	==	(T)
	);

	static_assert
	(	(T	or	(p	and	q))
	==	(T)
	);
	static_assert
	(	(T	or	(p	and	(q	or	r)))
	==	(T)
	);
	static_assert
	(	(T	or	((p	and	q)	or	r))
	==	(T)
	);
	static_assert
	(	(T	or	((p	and	q)	or	(r	and	s)))
	==	(T)
	);

	static_assert
	(	(T	or	(p	or	q))
	==	(T)
	);
	static_assert
	(	(T	or	(p	or	(q	and	r)))
	==	(T)
	);
	static_assert
	(	(T	or	((p	or	q)	and	r))
	==	(T)
	);
	static_assert
	(	(T	or	((p	or	q)	and	(r	or	s)))
	==	(T)
	);

	static_assert
	(	(T	+	T)
	==	(T)
	);
	static_assert
	(	(T	+	F)
	==	(T)
	);
	static_assert
	(	(T	+	p)
	==	(T)
	);

	static_assert
	(	(T	+	(p	and	q))
	==	(T)
	);
	static_assert
	(	(T	+	(p	and	(q	or	r)))
	==	(T)
	);
	static_assert
	(	(T	+	((p	and	q)	or	r))
	==	(T)
	);
	static_assert
	(	(T	+	((p	and	q)	or	(r	and	s)))
	==	(T)
	);

	static_assert
	(	(T	+	(p	or	q))
	==	(T)
	);
	static_assert
	(	(T	+	(p	or	(q	and	r)))
	==	(T)
	);
	static_assert
	(	(T	+	((p	or	q)	and	r))
	==	(T)
	);
	static_assert
	(	(T	+	((p	or	q)	and	(r	or	s)))
	==	(T)
	);
}

namespace
	// False Operand Test
{
	static_assert
	(	(F	and	T)
	==	(F)
	);
	static_assert
	(	(F	and	F)
	==	(F)
	);
	static_assert
	(	(F	and	p)
	==	(F)
	);

	static_assert
	(	(F	and	(p	and	q))
	==	(F)
	);
	static_assert
	(	(F	and	(p	and	(q	or	r)))
	==	(F)
	);
	static_assert
	(	(F	and	((p	and	q)	or	r))
	==	(F)
	);
	static_assert
	(	(F	and	((p	and	q)	or	(r	and	s)))
	==	(F)
	);

	static_assert
	(	(F	and	(p	or	q))
	==	(F)
	);
	static_assert
	(	(F	and	(p	or	(q	and	r)))
	==	(F)
	);
	static_assert
	(	(F	and	((p	or	q)	and	r))
	==	(F)
	);
	static_assert
	(	(F	and	((p	or	q)	and	(r	or	s)))
	==	(F)
	);

	static_assert
	(	(F	*	T)
	==	(F)
	);
	static_assert
	(	(F	*	F)
	==	(F)
	);
	static_assert
	(	(F	*	p)
	==	(F)
	);

	static_assert
	(	(F	*	(p	and	q))
	==	(F)
	);
	static_assert
	(	(F	*	(p	and	(q	or	r)))
	==	(F)
	);
	static_assert
	(	(F	*	((p	and	q)	or	r))
	==	(F)
	);
	static_assert
	(	(F	*	((p	and	q)	or	(r	and	s)))
	==	(F)
	);

	static_assert
	(	(F	*	(p	or	q))
	==	(F)
	);
	static_assert
	(	(F	*	(p	or	(q	and	r)))
	==	(F)
	);
	static_assert
	(	(F	*	((p	or	q)	and	r))
	==	(F)
	);
	static_assert
	(	(F	*	((p	or	q)	and	(r	or	s)))
	==	(F)
	);

	static_assert
	(	(F	or	T)
	==	(T)
	);
	static_assert
	(	(F	or	F)
	==	(F)
	);
	static_assert
	(	(F	or	p)
	==	(p)
	);

	static_assert
	(	(F	or	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(F	or	(p	and	(q	or	r)))
	==	(p	and	(q	or	r))
	);
	static_assert
	(	(F	or	((p	and	q)	or	r))
	==	((p	and	q)	or	r)
	);
	static_assert
	(	(F	or	((p	and	q)	or	(r	and	s)))
	==	((p	and	q)	or	(r	and	s))
	);

	static_assert
	(	(F	or	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(F	or	(p	or	(q	and	r)))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	(F	or	((p	or	q)	and	r))
	==	((p	or	q)	and	r)
	);
	static_assert
	(	(F	or	((p	or	q)	and	(r	or	s)))
	==	((p	or	q)	and	(r	or	s))
	);

	static_assert
	(	(F	+	T)
	==	(T)
	);
	static_assert
	(	(F	+	F)
	==	(F)
	);
	static_assert
	(	(F	+	p)
	==	(p)
	);

	static_assert
	(	(F	+	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(F	+	(p	and	(q	or	r)))
	==	(p	and	(q	or	r))
	);
	static_assert
	(	(F	+	((p	and	q)	or	r))
	==	((p	and	q)	or	r)
	);
	static_assert
	(	(F	+	((p	and	q)	or	(r	and	s)))
	==	((p	and	q)	or	(r	and	s))
	);

	static_assert
	(	(F	+	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(F	+	(p	or	(q	and	r)))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	(F	+	((p	or	q)	and	r))
	==	((p	or	q)	and	r)
	);
	static_assert
	(	(F	+	((p	or	q)	and	(r	or	s)))
	==	((p	or	q)	and	(r	or	s))
	);
}

namespace
	Literal_X_Literal
{

	static_assert
	(	(T	or	T)
	==	(T)
	);
	static_assert
	(	(T	or	F)
	==	(T)
	);
	static_assert
	(	(T	or	p)
	==	(T)
	);

	static_assert
	(	(T	+	T)
	==	(T)
	);
	static_assert
	(	(T	+	F)
	==	(T)
	);
	static_assert
	(	(T	+	p)
	==	(T)
	);

	static_assert
	(	(F	and	T)
	==	(F)
	);
	static_assert
	(	(F	and	F)
	==	(F)
	);
	static_assert
	(	(F	and	p)
	==	(F)
	);

	static_assert
	(	(F	*	T)
	==	(F)
	);
	static_assert
	(	(F	*	F)
	==	(F)
	);
	static_assert
	(	(F	*	p)
	==	(F)
	);

	static_assert
	(	(F	or	T)
	==	(T)
	);
	static_assert
	(	(F	or	F)
	==	(F)
	);
	static_assert
	(	(F	or	p)
	==	(p)
	);

	static_assert
	(	(F	+	T)
	==	(T)
	);
	static_assert
	(	(F	+	F)
	==	(F)
	);
	static_assert
	(	(F	+	p)
	==	(p)
	);

	static_assert
	(	(p	and	T)
	==	(p)
	);
	static_assert
	(	(p	and	F)
	==	(F)
	);
	static_assert
	(	(p	and	p)
	==	(p)
	);
	static_assert
	(	(p	and	!p)
	==	(F)
	);
	static_assert
	(	(p	and	q)
	==	(p	and	q)
	);

	static_assert
	(	(p	*	T)
	==	(p)
	);
	static_assert
	(	(p	*	F)
	==	(F)
	);
	static_assert
	(	(p	*	p)
	==	(p)
	);
	static_assert
	(	(p	*	!p)
	==	(F)
	);
	static_assert
	(	(p	*	q)
	==	(p	and	q)
	);

	static_assert
	(	(p	or	T)
	==	(T)
	);
	static_assert
	(	(p	or	F)
	==	(p)
	);
	static_assert
	(	(p	or	p)
	==	(p)
	);
	static_assert
	(	(p	or	!p)
	==	(T)
	);
	static_assert
	(	(p	or	q)
	==	(p	or	q)
	);

	static_assert
	(	(p	+	T)
	==	(T)
	);
	static_assert
	(	(p	+	F)
	==	(p)
	);
	static_assert
	(	(p	+	p)
	==	(p)
	);
	static_assert
	(	(p	+	!p)
	==	(T)
	);
	static_assert
	(	(p	+	q)
	==	(p	or	q)
	);
}

namespace
	Literal_X_Clause
{
	static_assert
	(	(T	or	(p	and	q))
	==	(T)
	);
	static_assert
	(	(T	or	(p	or	q))
	==	(T)
	);
	static_assert
	(	(T	+	(p	and	q))
	==	(T)
	);
	static_assert
	(	(T	+	(p	or	q))
	==	(T)
	);

	static_assert
	(	(F	and	(p	and	q))
	==	(F)
	);
	static_assert
	(	(F	and	(p	or	q))
	==	(F)
	);
	static_assert
	(	(F	*	(p	and	q))
	==	(F)
	);
	static_assert
	(	(F	*	(p	or	q))
	==	(F)
	);
	static_assert
	(	(F	or	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(F	or	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(F	+	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(F	+	(p	or	q))
	==	(p	or	q)
	);

	static_assert
	(	(p	and	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(p	and	(!p	and	q))
	==	(F)
	);
	static_assert
	(	(p	and	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	(p	and	(q	and	!p))
	==	(F)
	);
	static_assert
	(	(p	and	(q	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	(p	and	(p	or	q))
	==	(p)
	);
	static_assert
	(	(p	and	(!p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	(p	and	(q	or	p))
	==	(p)
	);
	static_assert
	(	(p	and	(q	or	!p))
	==	(p	and	q)
	);
	static_assert
	(	(p	and	(q	or	r))
	==	(p	and	(q	or	r))
	);

	static_assert
	(	(p	*	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(p	*	(!p	and	q))
	==	(F)
	);
	static_assert
	(	(p	*	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	(p	*	(q	and	!p))
	==	(F)
	);
	static_assert
	(	(p	*	(q	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	(p	*	(p	or	q))
	==	(p)
	);
	static_assert
	(	(p	*	(!p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	(p	*	(q	or	p))
	==	(p)
	);
	static_assert
	(	(p	*	(q	or	!p))
	==	(p	and	q)
	);
	static_assert
	(	(p	*	(q	or	r))
	==	((p	and	q)	or	(p	and	r))
	);

	static_assert
	(	(p	or	(p	and	q))
	==	(p)
	);
	static_assert
	(	(p	or	(!p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	(p	or	(q	and	p))
	==	(p)
	);
	static_assert
	(	(p	or	(q	and	!p))
	==	(p	or	q)
	);
	static_assert
	(	(p	or	(q	and	r))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	(p	or	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(p	or	(!p	or	q))
	==	(T)
	);
	static_assert
	(	(p	or	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	(p	or	(q	or	!p))
	==	(T)
	);
	static_assert
	(	(p	or	(q	or	r))
	==	(p	or	q	or	r)
	);

	static_assert
	(	(p	+	(p	and	q))
	==	(p)
	);
	static_assert
	(	(p	+	(!p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	(p	+	(q	and	p))
	==	(p)
	);
	static_assert
	(	(p	+	(q	and	!p))
	==	(p	or	q)
	);
	static_assert
	(	(p	+	(q	and	r))
	==	((p	or	q)	and	(p	or	r))
	);
	static_assert
	(	(p	+	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(p	+	(!p	or	q))
	==	(T)
	);
	static_assert
	(	(p	+	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	(p	+	(q	or	!p))
	==	(T)
	);
	static_assert
	(	(p	+	(q	or	r))
	==	(p	or	q	or	r)
	);
}


namespace
	Clause_X_Literal
{
	static_assert
	(	((p	and	q)	and	T)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	F)
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	p)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	!p)
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	q)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	!q)
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	r)
	==	(p	and	q	and	r)
	);

	static_assert
	(	((p and	q)	*	T)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	F)
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	p)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	!p)
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	q)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	!q)
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	r)
	==	(p	and	q	and	r)
	);

	static_assert
	(	((p and	q)	or	T)
	==	(T)
	);
	static_assert
	(	((p	and	q)	or	F)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	or	p)
	==	(p)
	);
	static_assert
	(	((p	and	q)	or	!p)
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	or	q)
	==	(q)
	);
	static_assert
	(	((p	and	q)	or	!q)
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	or	r)
	==	((p	and	q)	or	r)
	);

	static_assert
	(	((p and	q)	+	T)
	==	(T)
	);
	static_assert
	(	((p	and	q)	+	F)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	+	p)
	==	(p)
	);
	static_assert
	(	((p	and	q)	+	!p)
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	+	q)
	==	(q)
	);
	static_assert
	(	((p	and	q)	+	!q)
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	+	r)
	==	((p	or	r)	and	(q	or	r))
	);

	static_assert
	(	((p or	q)	and	T)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	and	F)
	==	(F)
	);
	static_assert
	(	((p	or	q)	and	p)
	==	(p)
	);
	static_assert
	(	((p	or	q)	and	!p)
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	and	q)
	==	(q)
	);
	static_assert
	(	((p	or	q)	and	!q)
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	and	r)
	==	((p	or	q)	and	r)
	);

	static_assert
	(	((p or	q)	*	T)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	*	F)
	==	(F)
	);
	static_assert
	(	((p	or	q)	*	p)
	==	(p)
	);
	static_assert
	(	((p	or	q)	*	!p)
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	*	q)
	==	(q)
	);
	static_assert
	(	((p	or	q)	*	!q)
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	*	r)
	==	((p	and	r)	or	(q	and	r))
	);

	static_assert
	(	((p or	q)	or	T)
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	F)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	p)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	!p)
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	q)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	!q)
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	r)
	==	(p	or	q	or	r)
	);

	static_assert
	(	((p or	q)	+	T)
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	F)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	p)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	!p)
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	q)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	!q)
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	r)
	==	(p	or	q	or	r)
	);
}

namespace
	Clause_X_Clause
{
	static_assert
	(	((p	and	q)	and	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(p	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(!p	and	q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!p	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(q	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(!q	and	p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(r	and	p))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(r	and	q))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(r	and	s))
	==	(p	and	q	and	r	and	s)
	);

	static_assert
	(	((p	and	q)	and	(p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(p	or	!q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(p	or	r))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(!p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(!p	or	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!p	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(q	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(q	or	!p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(q	or	r))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(!q	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(!q	or	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!q	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(r	or	!p))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(r	or	!q))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	or	s))
	==	(p	and	q	and	(r	or	s))
	);

	static_assert
	(	((p	and	q)	*	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(p	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(!p	and	q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!p	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(q	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(!q	and	p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(r	and	p))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(r	and	q))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(r	and	s))
	==	(p	and	q	and	r	and	s)
	);

	static_assert
	(	((p	and	q)	*	(p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(p	or	!q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(p	or	r))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(!p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(!p	or	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!p	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(q	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(q	or	!p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(q	or	r))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(!q	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(!q	or	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!q	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(r	or	!p))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(r	or	!q))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	or	s))
	==	((p	and	q	and	r)	or	(p	and	q	and	s))
	);

	static_assert
	(	((p	or	q)	and	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	or	q)	and	(p	and	!q))
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	and	(p	and	r))
	==	(p	and	r)
	);
	static_assert
	(	((p	or	q)	and	(!p	and	q))
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	and	(!p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	or	q)	and	(!p	and	r))
	==	(q	and	!p	and	r)
	);
	static_assert
	(	((p	or	q)	and	(q	and	p))
	==	(q	and	p)
	);
	static_assert
	(	((p	or	q)	and	(q	and	!p))
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	and	(q	and	r))
	==	(q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(!q	and	p))
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	and	(!q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	or	q)	and	(!q	and	r))
	==	(p	and	!q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	p))
	==	(p	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	!p))
	==	(q	and	!p	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	q))
	==	(q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	!q))
	==	(p	and	!q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	s))
	==	((p	or	q)	and	r	and	s)
	);

	static_assert
	(	((p	or	q)	and	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	and	(p	or	!q))
	==	(p)
	);
	static_assert
	(	((p	or	q)	and	(p	or	r))
	==	((p	or	q)	and	(p	or	r))
	);
	static_assert
	(	((p	or	q)	and	(!p	or	q))
	==	(q)
	);
	static_assert
	(	((p	or	q)	and	(!p	or	!q))
	==	((p	or	q)	and	(!p	or	!q))
	);
	static_assert
	(	((p	or	q)	and	(!p	or	r))
	==	((p	or	q)	and	(!p	or	r))
	);
	static_assert
	(	((p	or	q)	and	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	and	(q	or	!p))
	==	(q)
	);
	static_assert
	(	((p	or	q)	and	(q	or	r))
	==	((p	or	q)	and	(q	or	r))
	);
	static_assert
	(	((p	or	q)	and	(!q	or	p))
	==	(p)
	);
	static_assert
	(	((p	or	q)	and	(!q	or	!p))
	==	((p	or	q)	and	(!q	or	!p))
	);
	static_assert
	(	((p	or	q)	and	(!q	or	r))
	==	((p	or	q)	and	(!q	or	r))
	);
	static_assert
	(	((p	or	q)	and	(r	or	p))
	==	((p	or	q)	and	(r	or	p))
	);
	static_assert
	(	((p	or	q)	and	(r	or	!p))
	==	((p	or	q)	and	(r	or	!p))
	);
	static_assert
	(	((p	or	q)	and	(r	or	q))
	==	((p	or	q)	and	(r	or	q))
	);
	static_assert
	(	((p	or	q)	and	(r	or	!q))
	==	((p	or	q)	and	(r	or	!q))
	);
	static_assert
	(	((p	or	q)	and	(r	or	s))
	==	((p	or	q)	and	(r	or	s))
	);

	static_assert
	(	((p	or	q)	*	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	or	q)	*	(p	and	!q))
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	*	(p	and	r))
	==	(p	and	r)
	);
	static_assert
	(	((p	or	q)	*	(!p	and	q))
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	*	(!p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	or	q)	*	(!p	and	r))
	==	(q	and	!p	and	r)
	);
	static_assert
	(	((p	or	q)	*	(q	and	p))
	==	(q	and	p)
	);
	static_assert
	(	((p	or	q)	*	(q	and	!p))
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	*	(q	and	r))
	==	(q	and	r)
	);
	static_assert
	(	((p	or	q)	*	(!q	and	p))
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	*	(!q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	or	q)	*	(!q	and	r))
	==	(p	and	!q	and	r)
	);
	static_assert
	(	((p	or	q)	*	(r	and	p))
	==	(p	and	r)
	);
	static_assert
	(	((p	or	q)	*	(r	and	!p))
	==	(q	and	r	and	!p)
	);
	static_assert
	(	((p	or	q)	*	(r	and	q))
	==	(q	and	r)
	);
	static_assert
	(	((p	or	q)	*	(r	and	!q))
	==	(p	and	r	and	!q)
	);
	static_assert
	(	((p	or	q)	*	(r	and	s))
	==	((p	and	r	and	s)	or	(q	and	r	and	s))
	);

	static_assert
	(	((p	or	q)	*	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	*	(p	or	!q))
	==	(p)
	);
	static_assert
	(	((p	or	q)	*	(p	or	r))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	((p	or	q)	*	(!p	or	q))
	==	(q)
	);
	static_assert
	(	((p	or	q)	*	(!p	or	!q))
	==	((q	and	!p)	or	(p	and	!q))
	);
	static_assert
	(	((p	or	q)	*	(!p	or	r))
	==	((q	and	!p)	or	(p	and	r))
	);
	static_assert
	(	((p	or	q)	*	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	*	(q	or	!p))
	==	(q)
	);
	static_assert
	(	((p	or	q)	*	(q	or	r))
	==	(q	or	(p	and	r))
	);
	static_assert
	(	((p	or	q)	*	(!q	or	p))
	==	(p)
	);
	static_assert
	(	((p	or	q)	*	(!q	or	!p))
	==	((p	and	!q)	or	(q	and	!p))
	);
	static_assert
	(	((p	or	q)	*	(!q	or	r))
	==	((p	and	!q)	or	(q	and	r))
	);
	static_assert
	(	((p	or	q)	*	(r	or	p))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	((p	or	q)	*	(r	or	!p))
	==	((p	and	r)	or	(q	and	!p))
	);
	static_assert
	(	((p	or	q)	*	(r	or	q))
	==	((p	and	r)	or	q)
	);
	static_assert
	(	((p	or	q)	*	(r	or	!q))
	==	((q	and	r)	or	(p	and	!q))
	);
	static_assert
	(	((p	or	q)	*	(r	or	s))
	==	((p	and	r)	or	(q	and	r)	or	(p	and	s)	or	(q	and	s))
	);

	static_assert
	(	((p	and	q)	or	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	or	(p	and	!q))
	==	(p)
	);
	static_assert
	(	((p	and	q)	or	(p	and	r))
	==	((p	and	q)	or	(p	and	r))
	);
	static_assert
	(	((p	and	q)	or	(!p	and	q))
	==	(q)
	);
	static_assert
	(	((p	and	q)	or	(!p	and	!q))
	==	((p	and	q)	or	(!p	and	!q))
	);
	static_assert
	(	((p	and	q)	or	(!p	and	r))
	==	((p	and	q)	or	(!p	and	r))
	);
	static_assert
	(	((p	and	q)	or	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	or	(q	and	!p))
	==	(q)
	);
	static_assert
	(	((p	and	q)	or	(q	and	r))
	==	((p	and	q)	or	(q	and	r))
	);
	static_assert
	(	((p	and	q)	or	(!q	and	p))
	==	(p)
	);
	static_assert
	(	((p	and	q)	or	(!q	and	!p))
	==	((p	and	q)	or	(!q	and	!p))
	);
	static_assert
	(	((p	and	q)	or	(!q	and	r))
	==	((p	and	q)	or	(!q	and	r))
	);
	static_assert
	(	((p	and	q)	or	(r	and	q))
	==	((p	and	q)	or	(r	and	q))
	);
	static_assert
	(	((p	and	q)	or	(r	and	!q))
	==	((p	and	q)	or	(r	and	!q))
	);
	static_assert
	(	((p	and	q)	or	(r	and	p))
	==	((p	and	q)	or	(r	and	p))
	);
	static_assert
	(	((p	and	q)	or	(r	and	!p))
	==	((p	and	q)	or	(r	and	!p))
	);
	static_assert
	(	((p	and	q)	or	(r	and	s))
	==	((p	and	q)	or	(r	and	s))
	);

	static_assert
	(	((p	and	q)	or	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	and	q)	or	(p	or	!q))
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	or	(p	or	r))
	==	(p	or	r)
	);
	static_assert
	(	((p	and	q)	or	(!p	or	q))
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	or	(!p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	and	q)	or	(!p	or	r))
	==	(q	or	!p	or	r)
	);
	static_assert
	(	((p	and	q)	or	(q	or	p))
	==	(q	or	p)
	);
	static_assert
	(	((p	and	q)	or	(q	or	!p))
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	or	(q	or	r))
	==	(q	or	r)
	);
	static_assert
	(	((p	and	q)	or	(!q	or	p))
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	or	(!q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	and	q)	or	(!q	or	r))
	==	(p	or	!q	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	p))
	==	(p	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	!p))
	==	(q	or	!p	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	q))
	==	(q	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	!q))
	==	(p	or	!q	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	s))
	==	((p	and	q)	or	r	or	s)
	);

	static_assert
	(	((p	or	q)	or	(p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(p	and	!q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(p	and	r))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(!p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(!p	and	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!p	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(q	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(q	and	!p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(q	and	r))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(!q	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(!q	and	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!q	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(r	and	!p))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(r	and	!q))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	and	s))
	==	(p	or	q	or	(r	and	s))
	);

	static_assert
	(	((p	or	q)	or	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(p	or	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(!p	or	q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!p	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(q	or	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(!q	or	p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(r	or	p))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(r	or	q))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(r	or	s))
	==	(p	or	q	or	r	or	s)
	);

	static_assert
	(	((p	and	q)	+	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	+	(p	and	!q))
	==	(p)
	);
	static_assert
	(	((p	and	q)	+	(p	and	r))
	==	(p	and	(q	or	r))
	);
	static_assert
	(	((p	and	q)	+	(!p	and	q))
	==	(q)
	);
	static_assert
	(	((p	and	q)	+	(!p	and	!q))
	==	((q	or	!p)	and	(p	or	!q))
	);
	static_assert
	(	((p	and	q)	+	(!p	and	r))
	==	((q	or	!p)	and	(p	or	r))
	);
	static_assert
	(	((p	and	q)	+	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	+	(q	and	!p))
	==	(q)
	);
	static_assert
	(	((p	and	q)	+	(q	and	r))
	==	(q	and	(p	or	r))
	);
	static_assert
	(	((p	and	q)	+	(!q	and	p))
	==	(p)
	);
	static_assert
	(	((p	and	q)	+	(!q	and	!p))
	==	((p	or	!q)	and	(q	or	!p))
	);
	static_assert
	(	((p	and	q)	+	(!q	and	r))
	==	((p	or	!q)	and	(q	or	r))
	);
	static_assert
	(	((p	and	q)	+	(r	and	p))
	==	(p	and	(q	or	r))
	);
	static_assert
	(	((p	and	q)	+	(r	and	!p))
	==	((p	or	r)	and	(q	or	!p))
	);
	static_assert
	(	((p	and	q)	+	(r	and	q))
	==	((p	or	r)	and	q)
	);
	static_assert
	(	((p	and	q)	+	(r	and	!q))
	==	((q	or	r)	and	(p	or	!q))
	);
	static_assert
	(	((p	and	q)	+	(r	and	s))
	==	((p	or	r)	and	(q	or	r)	and	(p	or	s)	and	(q	or	s))
	);

	static_assert
	(	((p	and	q)	+	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	and	q)	+	(p	or	!q))
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	+	(p	or	r))
	==	(p	or	r)
	);
	static_assert
	(	((p	and	q)	+	(!p	or	q))
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	+	(!p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	and	q)	+	(!p	or	r))
	==	(q	or	!p	or	r)
	);
	static_assert
	(	((p	and	q)	+	(q	or	p))
	==	(q	or	p)
	);
	static_assert
	(	((p	and	q)	+	(q	or	!p))
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	+	(q	or	r))
	==	(q	or	r)
	);
	static_assert
	(	((p	and	q)	+	(!q	or	p))
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	+	(!q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	and	q)	+	(!q	or	r))
	==	(p	or	!q	or	r)
	);
	static_assert
	(	((p	and	q)	+	(r	or	p))
	==	(p	or	r)
	);
	static_assert
	(	((p	and	q)	+	(r	or	!p))
	==	(q	or	r	or !p)
	);
	static_assert
	(	((p	and	q)	+	(r	or	q))
	==	(q	or	r)
	);
	static_assert
	(	((p	and	q)	+	(r	or	!q))
	==	(p	or	r	or	!q)
	);
	static_assert
	(	((p	and	q)	+	(r	or	s))
	==	((p	or	r	or	s)	and	(q	or	r	or	s))
	);

	static_assert
	(	((p	or	q)	+	(p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(p	and	!q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(p	and	r))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(!p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(!p	and	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!p	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(q	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(q	and	!p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(q	and	r))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(!q	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(!q	and	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!q	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(r	and	!p))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(r	and	!q))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	and	s))
	==	((p	or	q	or	r)	and	(p	or	q	or	s))
	);

	static_assert
	(	((p	or	q)	+	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(p	or	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(!p	or	q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!p	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(q	or	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(!q	or	p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(r	or	p))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(r	or	q))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(r	or	s))
	==	(p	or	q	or	r	or	s)
	);
}

namespace
	Clause2_X_Clause3
{
	static_assert
	(	((p	and	q)	and	(!p	and	!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!p	or	!q	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(!p	and	!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	or	q)	and	(!p	or	!q	or	r))
	==	((p	or	q)	and	(!p	or	!q	or	r))
	);
	static_assert
	(	((p	and	q)	*	(!p	and	!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!p	or	!q	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	or	q)	*	(!p	and	!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	or	q)	*	(!p	or	!q	or	r))
	==	((q	and	!p)	or	(p	and	!q)	or	(p	and	r))
	);
	static_assert
	(	((p	and	q)	or	(!p	and	!q	and	r))
	==	((p	and	q)	or	(!p	and	!q	and	r))
	);
	static_assert
	(	((p	and	q)	or	(!p	or	!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!p	and	!q	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(!p	or	!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	and	q)	+	(!p	and	!q	and	r))
	==	((q	or	!p)	and	(p	or	!q)	and	(p	or	r))
	);
	static_assert
	(	((p	and	q)	+	(!p	or	!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!p	and	!q	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(!p	or	!q	or	r))
	==	(T)
	);
}

namespace
	Literal_X_Term_1x2
{

}

namespace
	Term_1x2_X_Literal
{

}

namespace
	Clause_X_Term_1x2
{

}

namespace
	Term_1x2_X_Clause
{

}

namespace
	Term_1x2_X_Term_1x2
{

}

namespace
	Literal_X_Term_2x2
{

}

namespace
	Term_2x2_X_Literal
{

}

namespace
	Clause_X_Term_2x2
{

}

namespace
	Term_2x2_X_Clause
{

}

namespace
	Term_1x2_Term_2x2
{

}

namespace
	Term_2x2_X_Term_1x2
{

}

namespace
	Term_2x2_X_Term_2x2
{

}
