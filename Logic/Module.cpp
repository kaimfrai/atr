
module;

#include <type_traits>

export module
	Logic
;

//	TODO: These should be module partitions but clang doesn't support those yet.
#include "Conjunction.hpp"
#include "Disjunction.hpp"
#include "Equivalence.hpp"
#include "Implication.hpp"
#include "Negation.hpp"
#include "Identity.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

/// ************************************************************************************************
///	export namespace
///	Performs logical computations and simplifications on terms of predicates using their disjunctive
///	normal form.
/// ************************************************************************************************
export namespace
	Logic
{
	///	Wraps around a logical term which will be as simplified as possible.
	//	Wrapping ensures that the invariant of the template can never be violated from outside the
	///	module by means of specialization or type deduction, which is not possible without access
	///	to the template and type definitions.
	template
		<	ProtoTerm
				t_tTerm
		>
	struct
		Term
	{
		consteval
		(	Term
		)	()
		=	default
		;

		explicit consteval
		(	Term
		)	(	t_tTerm
			)
		{}
	};

	///	Deduce type from argument.
	template
		<	ProtoTerm
				t_tTerm
		>
	(	Term
	)	(	t_tTerm
		)
	->	Term
		<	t_tTerm
		>
	;

	///	Checks if the left term implies the right term.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator >=
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	->	bool
	{	return
		(	t_tLeftTerm{}
		>=	t_tRightTerm{}
		);
	}

	///	Checks if the left term is implied by the right term.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator <=
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	->	bool
	{	return
		(	t_tLeftTerm{}
		<=	t_tRightTerm{}
		);
	}

	///	Checks the two given terms for equivalence.
	///	Note that identical terms are always equivalent.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator <=>
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	->	bool
	{	return
		(	t_tLeftTerm{}
		<=>	t_tRightTerm{}
		);
	}

	///	Checks the two given terms for identity.
	///	Note that this is not the same as equivalence.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator ==
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	->	bool
	{	return
		(	t_tLeftTerm{}
		==	t_tRightTerm{}
		);
	}

	///	Forms the negation of the given term.
	template
		<	ProtoTerm
				t_tTerm
		>
	auto consteval
	(	operator not
	)	(	Term<t_tTerm>
		)
	{
		return
		Term
		{	not
			t_tTerm
			{}
		};
	}

	///	Forms the Conjunction of the two given terms.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator and
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	{	return
		Term
		{	t_tLeftTerm{}
		and t_tRightTerm{}
		};
	}

	///	Forms the Disjunction of the two given terms.
	template
		<	ProtoTerm
				t_tLeftTerm
		,	ProtoTerm
				t_tRightTerm
		>
	auto consteval
	(	operator or
	)	(	Term<t_tLeftTerm>
		,	Term<t_tRightTerm>
		)
	{	return
		Term
		{	t_tLeftTerm{}
		or	t_tRightTerm{}
		};
	}

	using
		True
	=	Term
		<	::True
		>
	;

	using
		False
	=	Term
		<	::False
		>
	;

	///	Convenience alias to create a term for an atomic predicate.
	///	Intended for CRTP use.
	///	Note that being default constructible and callable is a requirement,
	///	which cannot be checked as the type will be incomplete at this point.
	template
		<	ProtoAtom
				t_tAtom
		>
	using
		Atom
	=	Term
		<	::Atom
			<	t_tAtom
			>
		>
	;

	///	Convenience alias to create a term for a conjunction of an existing term
	///	and a new atomic predicate.
	///	Intended for CRTP use.
	///	Note that being default constructible and callable is a requirement,
	///	which cannot be checked as the type will be incomplete at this point.
	template
		<	Term
				i_vTerm
		,	ProtoAtom
				t_tAtom
		>
	using
		Conjunction
	=	Term
		<	decltype
			(	i_vTerm
			and	Atom
				<	t_tAtom
				>{}
			)
		>
	;

	///	Convenience alias to create a term for a disjunction of an existing term
	///	and a new atomic predicate.
	///	Intended for CRTP use.
	///	Note that being default constructible and callable is a requirement,
	///	which cannot be checked as the type will be incomplete at this point.
	template
		<	Term
				i_vTerm
		,	ProtoAtom
				t_tAtom
		>
	using
		Disjunction
	=	Term
		<	decltype
			(	i_vTerm
			or	Atom
				<	t_tAtom
				>{}
			)
		>
	;
}

module
	:private
;

struct P : Logic::Atom<P> {} constexpr inline p{};
struct Q : Logic::Atom<Q> {} constexpr inline q{};
struct R : Logic::Atom<R> {} constexpr inline r{};
struct S : Logic::Atom<S> {} constexpr inline s{};

/// ************************************************************************************************
///	Tests for Concepts
/// ************************************************************************************************
static_assert(
	ProtoAtom<		P	>);
static_assert(not
	ProtoTerm<		P	>);
static_assert(not
	ProtoClause<	P	>);
static_assert(not
	ProtoLiteral<	P	>);
static_assert(not
	ProtoConstant<	P	>);

static_assert(not
	ProtoAtom<		True	>);
static_assert(
	ProtoTerm<		True	>);
static_assert(
	ProtoClause<	True	>);
static_assert(
	ProtoLiteral<	True	>);
static_assert(
	ProtoConstant<	True	>);

static_assert(not
	ProtoAtom<		False	>);
static_assert(
	ProtoTerm<		False	>);
static_assert(
	ProtoClause<	False	>);
static_assert(
	ProtoLiteral<	False	>);
static_assert(
	ProtoConstant<	False	>);

static_assert(
	!ProtoAtom<		Atom<P>	>);
static_assert(
	ProtoTerm<		Atom<P>	>);
static_assert(
	ProtoClause<	Atom<P>	>);
static_assert(
	ProtoLiteral<	Atom<P>	>);
static_assert(not
	ProtoConstant<	Atom<P>	>);

static_assert(not
	ProtoAtom<		Not<P>	>);
static_assert(
	ProtoTerm<		Not<P>	>);
static_assert(
	ProtoClause<	Not<P>	>);
static_assert(
	ProtoLiteral<	Not<P>	>);
static_assert(not
	ProtoConstant<	Not<P>	>);

static_assert(not
	ProtoAtom<		And<Atom<P>, Atom<Q>>	>);
static_assert(
	ProtoTerm<		And<Atom<P>, Atom<Q>>	>);
static_assert(
	ProtoClause<	And<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoLiteral<	And<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoConstant<	And<Atom<P>, Atom<Q>>	>);

static_assert(not
	ProtoAtom<		Or<Atom<P>, Atom<Q>>	>);
static_assert(
	ProtoTerm<		Or<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoClause<	Or<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoLiteral<	Or<Atom<P>, Atom<Q>>	>);
static_assert(not
	ProtoConstant<	Or<Atom<P>, Atom<Q>>	>);

static_assert(not
	ProtoAtom<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(
	ProtoTerm<		Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(not
	ProtoClause<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(not
	ProtoLiteral<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);
static_assert(not
	ProtoConstant<	Or<And<Atom<P>, Atom<Q>>, Atom<R>>	>);

static_assert(not
	ProtoAtom<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(
	ProtoTerm<		Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(not
	ProtoClause<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(not
	ProtoLiteral<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
static_assert(not
	ProtoConstant<	Or<And<Atom<P>, Atom<Q>>, And<Atom<R>, Atom<S>>>	>);
