module;

#include "Logic/Simplify.hpp"
#include "Logic/Conversion.hpp"
#include "Logic/Disjunction.hpp"
#include "Logic/Negation.hpp"
#include "Logic/Identity.hpp"
#include "Logic/Types.hpp"

export module
	Logic
;

auto consteval
(	operator or
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	ProtoDisjunctive auto
{
	return
		AsDisjunctive(i_vLeft)
	bitor
		AsDisjunctive(i_vRight)
	;
}

auto consteval
(	operator and
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	ProtoConjunctive auto
{
	return
		not
		(	not
			i_vLeft
		or	not
			i_vRight
		)
	;
}
/// ****************************************************************************
///	export namespace
/// ****************************************************************************
export namespace
	Logic
{

	template
		<	ProtoTerm auto
				t_vTerm
		>
	struct
		TermBase
	{
		friend auto consteval
		(	operator >=
		)	(	TermBase const
				&
			,	ProtoTerm auto
					i_vRight
			)
		->	bool
		{	return t_vTerm >= i_vRight;	}

		friend auto consteval
		(	operator >=
		)	(	ProtoTerm auto
					i_vLeft
			,	TermBase const
				&
			)
		->	bool
		{	return i_vLeft >= t_vTerm;	}

		template<ProtoTerm auto t_vRightTerm>
		friend auto consteval
		(	operator >=
		)	(	TermBase const
				&
			,	TermBase<t_vRightTerm> const
				&
			)
		->	bool
		{	return t_vTerm >= t_vRightTerm;	}

		friend auto consteval
		(	operator ==
		)	(	TermBase const
				&
			,	ProtoTerm auto
					i_vRight
			)
		->	bool
		{	return t_vTerm == i_vRight;	}

		template<ProtoTerm auto t_vRightTerm>
		friend auto consteval
		(	operator ==
		)	(	ProtoTerm auto
					i_vLeft
			,	TermBase const
				&
			)
		->	bool
		{	return i_vLeft == t_vTerm;	}

		template<ProtoTerm auto t_vRightTerm>
		friend auto consteval
		(	operator ==
		)	(	TermBase const
				&
			,	TermBase<t_vRightTerm> const
				&
			)
		->	bool
		{	return t_vTerm == t_vRightTerm;	}

		friend auto consteval
		(	operator not
		)	(	TermBase const
				&
			)
		->	ProtoTerm auto
		{	return not t_vTerm;	}

		friend auto consteval
		(	operator and
		)	(	TermBase const
				&
			,	ProtoTerm auto
					i_vRight
			)
		->	ProtoConjunctive auto
		{	return t_vTerm and i_vRight;	}


		friend auto consteval
		(	operator and
		)	(	ProtoTerm auto
					i_vLeft
			,	TermBase const
				&
			)
		->	ProtoConjunctive auto
		{	return i_vLeft and t_vTerm;	}

		template
			<	ProtoTerm auto
					t_vRightTerm
			>
		friend auto consteval
		(	operator and
		)	(	TermBase const
				&
			,	TermBase<t_vRightTerm> const
				&
			)
		->	ProtoConjunctive auto
		{	return t_vTerm and t_vRightTerm;	}

		friend auto consteval
		(	operator or
		)	(	TermBase const
				&
			,	ProtoTerm auto
					i_vRight
			)
		->	ProtoDisjunctive auto
		{	return t_vTerm or i_vRight;	}

		friend auto consteval
		(	operator or
		)	(	ProtoTerm auto
					i_vLeft
			,	TermBase const
				&
			)
		->	ProtoDisjunctive auto
		{	return i_vLeft or t_vTerm;	}

		template
			<	ProtoTerm auto
					t_vRightTerm
			>
		friend auto consteval
		(	operator or
		)	(	TermBase const
				&
			,	TermBase<t_vRightTerm> const
				&
			)
		->	ProtoDisjunctive auto
		{	return t_vTerm or t_vRightTerm;	}
	};

	template
		<	ProtoAtom
				t_tAtom
		>
	using
		AtomBase
	=	TermBase
		<	Atom
			<	t_tAtom
			>{}
		>
	;
}

module
	:private
;

using namespace Logic;
True constexpr inline T{};
False constexpr inline F{};

/// Literals to be used only on the left side
struct A : AtomBase<A> {} constexpr inline a{};
struct B : AtomBase<B> {} constexpr inline b{};
struct C : AtomBase<C> {} constexpr inline c{};
struct D : AtomBase<D> {} constexpr inline d{};

/// Literals to be used on either side
struct P : AtomBase<P> {} constexpr inline p{};
struct Q : AtomBase<Q> {} constexpr inline q{};
struct R : AtomBase<R> {} constexpr inline r{};
struct S : AtomBase<S> {} constexpr inline s{};

/// ****************************************************************************
///	Tests for Concepts
/// ****************************************************************************
static_assert( ProtoAtom<			P	>);
static_assert(!ProtoTerm<			P	>);
static_assert(!ProtoConjunction<	P	>);
static_assert(!ProtoConjunctive<	P	>);
static_assert(!ProtoDisjunction<	P	>);
static_assert(!ProtoDisjunctive<	P	>);
static_assert(!ProtoLiteral<		P	>);
static_assert(!ProtoConstant<		P	>);

static_assert( ProtoTerm<			True	>);
static_assert( ProtoConjunction<	True	>);
static_assert( ProtoConjunctive<	True	>);
static_assert( ProtoDisjunction<	True	>);
static_assert( ProtoDisjunctive<	True	>);
static_assert( ProtoLiteral<		True	>);
static_assert( ProtoConstant<		True	>);

static_assert( ProtoTerm<			False	>);
static_assert( ProtoConjunction<	False	>);
static_assert( ProtoConjunctive<	False	>);
static_assert( ProtoDisjunction<	False	>);
static_assert( ProtoDisjunctive<	False	>);
static_assert( ProtoLiteral<		False	>);
static_assert( ProtoConstant<		False	>);

static_assert( ProtoTerm<			Atom<P>	>);
static_assert( ProtoConjunction<	Atom<P>	>);
static_assert( ProtoConjunctive<	Atom<P>	>);
static_assert( ProtoDisjunction<	Atom<P>	>);
static_assert( ProtoDisjunctive<	Atom<P>	>);
static_assert( ProtoLiteral<		Atom<P>	>);
static_assert(!ProtoConstant<		Atom<P>	>);

static_assert( ProtoTerm<			Not<P>	>);
static_assert( ProtoConjunction<	Not<P>	>);
static_assert( ProtoConjunctive<	Not<P>	>);
static_assert( ProtoDisjunction<	Not<P>	>);
static_assert( ProtoDisjunctive<	Not<P>	>);
static_assert( ProtoLiteral<		Not<P>	>);
static_assert(!ProtoConstant<		Not<P>	>);

static_assert( ProtoTerm<			And<Atom<P>, Atom<Q>>	>);
static_assert( ProtoConjunction<	And<Atom<P>, Atom<Q>>	>);
static_assert( ProtoConjunctive<	And<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoDisjunction<	And<Atom<P>, Atom<Q>>	>);
static_assert( ProtoDisjunctive<	And<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoLiteral<		And<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoConstant<		And<Atom<P>, Atom<Q>>	>);

static_assert( ProtoTerm<			And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoConjunction<	And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoConjunctive<	And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoDisjunction<	And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoDisjunctive<	And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoLiteral<		And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoConstant<		And<Or<Atom<P>, Atom<Q>>, Atom<R>>	>);

static_assert( ProtoTerm<			And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert( ProtoConjunction<	And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert( ProtoConjunctive<	And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoDisjunction<	And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoDisjunctive<	And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoLiteral<		And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoConstant<		And<Or<Atom<P>, Atom<Q>>, Or<Atom<R>, Atom<S>>>	>);

static_assert( ProtoTerm<			Or<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoConjunction<	Or<Atom<P>, Atom<Q>>	>);
static_assert( ProtoConjunctive<	Or<Atom<P>, Atom<Q>>	>);
static_assert( ProtoDisjunction<	Or<Atom<P>, Atom<Q>>	>);
static_assert( ProtoDisjunctive<	Or<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoLiteral<		Or<Atom<P>, Atom<Q>>	>);
static_assert(!ProtoConstant<		Or<Atom<P>, Atom<Q>>	>);

static_assert( ProtoTerm<			Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoConjunction<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoConjunctive<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoDisjunction<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert( ProtoDisjunctive<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoLiteral<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(!ProtoConstant<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);

static_assert( ProtoTerm<			Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoConjunction<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoConjunctive<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert( ProtoDisjunction<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert( ProtoDisjunctive<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoLiteral<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(!ProtoConstant<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);

/// ****************************************************************************
///	Literal P
/// ****************************************************************************

///	Literal
static_assert
(	(p	or	p)	==	(p)
);

///	Conjunction 1 x 1
static_assert
(	(p	or	(p	and	q))	==	(p)
);

///	Conjunction 1 x 2
static_assert
(	(p	or	(p	and	(q	or	r)))	==	(p)
);

///	Conjunction 2 x 1
static_assert
(	(p	or	((p	or	q)	and	r))	==	(p	or	(q	and	r))
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(p	or	((p	or	q)	and	(!p	or	!q)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(!q	or	!p)))	==	(p	or	q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(p	or	((p	or	q)	and	(p	or	r)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	or	q)	and	(!p	or	r)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(q	or	r)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(!q	or	r)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	or	q)	and	(r	or	p)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	or	q)	and	(r	or	!p)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(r	or	q)))	==	(p	or	q)
);
static_assert
(	(p	or	((p	or	q)	and	(r	or	!q)))	==	(p	or	(q	and	r))
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(p	or	((p	or	q)	and	(r	or	s)))	==	(p	or	(q	and	r)	or	(q	and	s))
);

///	Disjunction 1 x 1
static_assert
(	(p	or	(p	or	q))	==	(p	or	q)
);

///	Disjunction 1 x 2
static_assert
(	(p	or	(p	or	(q	and	r)))	==	(p	or	(q	and	r))
);

///	Disjunction 2 x 1
static_assert
(	(p	or	((p	and	q)	or	r))	==	(p	or	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(p	or	((p	and	q)	or	(!p	and	!q)))	==	(p	or	!q)
);
static_assert
(	(p	or	((p	and	q)	or	(!q	and	!p)))	==	(p	or	!q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(p	or	((p	and	q)	or	(p	and	r)))	==	(p)
);
static_assert
(	(p	or	((p	and	q)	or	(!p	and	r)))	==	(p	or	r)
);
static_assert
(	(p	or	((p	and	q)	or	(q	and	r)))	==	(p	or	(q	and	r))
);
static_assert
(	(p	or	((p	and	q)	or	(!q	and	r)))	==	(p	or	(!q	and	r))
);
static_assert
(	(p	or	((p	and	q)	or	(r	and	p)))	==	(p)
);
static_assert
(	(p	or	((p	and	q)	or	(r	and	!p)))	==	(p	or	r)
);
static_assert
(	(p	or	((p	and	q)	or	(r	and	q)))	==	(p	or	(r	and	q))
);
static_assert
(	(p	or	((p	and	q)	or	(r	and	!q)))	==	(p	or	(r	and	!q))
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(p	or	((p	and	q)	or	(r	and	s)))	==	(p	or	(r	and	s))
);





///	Literal
static_assert
(	(!p	or	p)	==	(T)
);

///	Conjunction 1 x 1
static_assert
(	(!p	or	(p	and	q))	==	(!p	or	q)
);

///	Conjunction 1 x 2
static_assert
(	(!p	or	(p	and	(q	or	r)))	==	(!p	or	q	or	r)
);

///	Conjunction 2 x 1
static_assert
(	(!p	or	((p	or	q)	and	r))	==	(!p	or	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(!p	or	((p	or	q)	and	(!p	or	!q)))	==	(!p	or	!q)
);
static_assert
(	(!p	or	((p	or	q)	and	(!q	or	!p)))	==	(!p	or	!q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(!p	or	((p	or	q)	and	(p	or	r)))	==	(T)
);
static_assert
(	(!p	or	((p	or	q)	and	(!p	or	r)))	==	(!p	or	r)
);
static_assert
(	(!p	or	((p	or	q)	and	(q	or	r)))	==	(!p	or	r	or	q)
);
static_assert
(	(!p	or	((p	or	q)	and	(!q	or	r)))	==	(!p	or	!q	or	r)
);
static_assert
(	(!p	or	((p	or	q)	and	(r	or	p)))	==	(T)
);
static_assert
(	(!p	or	((p	or	q)	and	(r	or	!p)))	==	(!p	or	r)
);
static_assert
(	(!p	or	((p	or	q)	and	(r	or	q)))	==	(!p	or	r	or	q)
);
static_assert
(	(!p	or	((p	or	q)	and	(r	or	!q)))	==	(!p	or	!q	or	r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(!p	or	((p	or	q)	and	(r	or	s)))	==	(!p	or	r	or	s)
);

///	Disjunction 1 x 1
static_assert
(	(!p	or	(p	or	q))	==	(T)
);

///	Disjunction 1 x 2
static_assert
(	(!p	or	(p	or	(q	and	r)))	==	(T)
);

///	Disjunction 2 x 1
static_assert
(	(!p	or	((p	and	q)	or	r))	==	(!p	or	q	or	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(!p	or	((p	and	q)	or	(!p	and	!q)))	==	(!p	or	q)
);
static_assert
(	(!p	or	((p	and	q)	or	(!q	and	!p)))	==	(!p	or	q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(!p	or	((p	and	q)	or	(p	and	r)))	==	(!p	or	q	or	r)
);
static_assert
(	(!p	or	((p	and	q)	or	(!p	and	r)))	==	(!p	or	q)
);
static_assert
(	(!p	or	((p	and	q)	or	(q	and	r)))	==	(!p	or	q)
);
static_assert
(	(!p	or	((p	and	q)	or	(!q	and	r)))	==	(!p	or	q	or	r)
);
static_assert
(	(!p	or	((p	and	q)	or	(r	and	p)))	==	(!p	or	q	or	r)
);
static_assert
(	(!p	or	((p	and	q)	or	(r	and	!p)))	==	(!p	or	q)
);
static_assert
(	(!p	or	((p	and	q)	or	(r	and	q)))	==	(!p	or	q)
);
static_assert
(	(!p	or	((p	and	q)	or	(r	and	!q)))	==	(!p	or	q	or	r)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(!p	or	((p	and	q)	or	(r	and	s)))	==	(!p	or	q	or	(r	and	s))
);





///	Literal
static_assert
(	(p	and	p)	==	(p)
);

///	Conjunction 1 x 1
static_assert
(	(p	and	(p	and	q))	==	(p	and	q)
);

///	Conjunction 1 x 2
static_assert
(	(p	and	(p	and	(q	or	r)))	==	(p	and	(q	or	r))
);

///	Conjunction 2 x 1
static_assert
(	(p	and	((p	or	q)	and	r))	==	(p	and	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(p	and	((p	or	q)	and	(!p	or	!q)))	==	(p	and	!q)
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	!p)))	==	(p	and	!q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(p	and	((p	or	q)	and	(p	or	r)))	==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(!p	or	r)))	==	(p	and	r)
);
static_assert
(	(p	and	((p	or	q)	and	(q	or	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(!q	or	r)))	==	(p	and	(!q	or	r))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	p)))	==	(p)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!p)))	==	(p	and	r)
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	q)))	==	(p	and	(r	or	q))
);
static_assert
(	(p	and	((p	or	q)	and	(r	or	!q)))	==	(p	and	(r	or	!q))
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(p	and	((p	or	q)	and	(r	or	s)))	==	(p	and	(r	or	s))
);

///	Disjunction 1 x 1
static_assert
(	(p	and	(p	or	q))	==	(p)
);
static_assert
(	(!p	and	(p	or	q))	==	(!p	and	q)
);

///	Disjunction 1 x 2
static_assert
(	(p	and	(p	or	(q	and	r)))	==	(p)
);

///	Disjunction 2 x 1
static_assert
(	(p	and	((p	and	q)	or	r))	==	(p	and	(q	or	r))
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(p	and	((p	and	q)	or	(!p	and	!q)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	!p)))	==	(p	and	q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(p	and	((p	and	q)	or	(p	and	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(!p	and	r)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(q	and	r)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(!q	and	r)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	p)))	==	(p	and	(q	or	r))
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!p)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	q)))	==	(p	and	q)
);
static_assert
(	(p	and	((p	and	q)	or	(r	and	!q)))	==	(p	and	(q	or	r))
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(p	and	((p	and	q)	or	(r	and	s)))	==	(p	and	(q	or	r)	and	(q	or	s))
);




///	Literal
static_assert
(	(!p	and	p)	==	(F)
);

///	Conjunction 1 x 1
static_assert
(	(!p	and	(p	and	q))	==	(F)
);

///	Conjunction 1 x 2
static_assert
(	(!p	and	(p	and	(q	or	r)))	==	(F)
);

///	Conjunction 2 x 1
static_assert
(	(!p	and	((p	or	q)	and	r))	==	(!p	and	q	and	r)
);

///	2 Literal Conjunction 2 x 2
static_assert
(	(!p	and	((p	or	q)	and	(!p	or	!q)))	==	(!p	and	q)
);
static_assert
(	(!p	and	((p	or	q)	and	(!q	or	!p)))	==	(!p	and	q)
);

///	3 Literal Conjunction 2 x 2
static_assert
(	(!p	and	((p	or	q)	and	(p	or	r)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	and	((p	or	q)	and	(!p	or	r)))	==	(!p	and	q)
);
static_assert
(	(!p	and	((p	or	q)	and	(q	or	r)))	==	(!p	and	q)
);
static_assert
(	(!p	and	((p	or	q)	and	(!q	or	r)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	and	((p	or	q)	and	(r	or	p)))	==	(!p	and	q	and	r)
);
static_assert
(	(!p	and	((p	or	q)	and	(r	or	!p)))	==	(!p	and	q)
);
static_assert
(	(!p	and	((p	or	q)	and	(r	or	q)))	==	(!p	and	q)
);
static_assert
(	(!p	and	((p	or	q)	and	(r	or	!q)))	==	(!p	and	q	and	r)
);

///	4 Literal Conjunction 2 x 2
static_assert
(	(!p	and	((p	or	q)	and	(r	or	s)))	==	(!p	and	q	and	(r	or	s))
);

///	Disjunction 1 x 1
static_assert
(	(!p	and	(p	or	q))	==	(!p	and	q)
);

///	Disjunction 1 x 2
static_assert
(	(!p	and	(p	or	(q	and	r)))	==	(!p	and	q	and	r)
);

///	Disjunction 2 x 1
static_assert
(	(!p	and	((p	and	q)	or	r))	==	(!p	and	r)
);

///	2 Literal Disjunction 2 x 2
static_assert
(	(!p	and	((p	and	q)	or	(!p	and	!q)))	==	(!p	and	!q)
);
static_assert
(	(!p	and	((p	and	q)	or	(!q	and	!p)))	==	(!p	and	!q)
);

///	3 Literal Disjunction 2 x 2
static_assert
(	(!p	and	((p	and	q)	or	(p	and	r)))	==	(F)
);
static_assert
(	(!p	and	((p	and	q)	or	(!p	and	r)))	==	(!p	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(q	and	r)))	==	(!p	and	r	and	q)
);
static_assert
(	(!p	and	((p	and	q)	or	(!q	and	r)))	==	(!p	and	!q	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	p)))	==	(F)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	!p)))	==	(!p	and	r)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	q)))	==	(!p	and	r	and	q)
);
static_assert
(	(!p	and	((p	and	q)	or	(r	and	!q)))	==	(!p	and	!q	and	r)
);

///	4 Literal Disjunction 2 x 2
static_assert
(	(!p	and	((p	and	q)	or	(r	and	s)))	==	(!p	and	r	and	s)
);
