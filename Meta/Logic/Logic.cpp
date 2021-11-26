module;

#include <type_traits>
#include <tuple>

export module
	Meta.Logic
;
export import Meta.Pack;

//	TODO: These should be module partitions but clang doesn't support those yet.
#include "Conjunction.hpp"
#include "Disjunction.hpp"
#include "Negation.hpp"
#include "Equivalence.hpp"
#include "Types.hpp"
#include "Concepts.hpp"

/// ************************************************************************************************
///	export namespace
///	Performs logical computations and simplifications on terms of predicates using their disjunctive
///	normal form.
/// ************************************************************************************************
export namespace
	Meta
{
	///	Wraps around a logical term which will be as simplified as possible.
	//	Wrapping ensures that the invariant of the template can never be
	///	violated from outside the module by means of specialization or
	///	type deduction, which is not possible without access to the template
	///	and type definitions.
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

		consteval
		(	Term
		)	(	Term<t_tTerm> const
					&
			)
		=	default;

		auto consteval
		(	operator()
		)	(	auto&&
				...	i_rpArgument
			)	const
		{	return
			t_tTerm{}
			(	static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			);
		}
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

	///	Deduce type from argument.
	template
		<	ProtoTerm
				t_tTerm
		>
	(	Term
	)	(	Term<t_tTerm> const
				&
		)
	->	Term
		<	t_tTerm
		>
	;

	template
		<	ProtoTerm
				t_tTerm
		>
	auto consteval
	(	Transform
	)	(	auto
				i_fTransform
		,	Term<t_tTerm>
		)
	{	return
		Term
		{	Transform
			(	i_fTransform
			,	t_tTerm{}
			)
		};
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
	{	return
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

	auto constexpr inline
		True
	=	Term
		<	::True
		>{}
	;

	auto constexpr inline
		False
	=	Term
		<	::False
		>{}
	;

	///	Convenience alias to create a term for an atomic predicate.
	///	Note that being default constructible and callable is a requirement,
	///	which cannot be checked as the type will be incomplete at this point.
	template
		<	ProtoAtom
				t_tAtom
		>
	auto constexpr inline
		Atom
	=	Term
		<	::Atom
			<	t_tAtom
			>
		>{}
	;

	template
		<	RingIndexType
				t_nIndex
		>
	struct
		ClauseSelector
	{
		template
			<	ProtoClause
				...	t_tpClause
			>
		auto constexpr
		(	operator()
		)	(	Term<Or<t_tpClause...>>
			)	const
		{	return
			Term
			{	RingSelect<t_nIndex>
				(	t_tpClause{}
					...
				)
			};
		}

		template
			<	ProtoClause
					t_tClause
			>
		auto constexpr
		(	operator()
		)	(	Term<t_tClause>
			)	const
		->	Term<t_tClause>
		{	return {};	}
	};

	template
		<	RingIndexType
				t_nIndex
		>
	auto constexpr inline
		SelectClause
	=	ClauseSelector<t_nIndex>
		{}
	;

	template
		<	RingIndexType
				t_nIndex
		>
	struct
		LiteralSelector
	{
		template
			<	ProtoLiteral
				...	t_tpLiteral
			>
		auto constexpr
		(	operator()
		)	(	Term<And<t_tpLiteral...>>
			)	const
		{	return
			Term
			{	RingSelect<t_nIndex>
				(	t_tpLiteral{}
					...
				)
			};
		}

		template
			<	ProtoLiteral
					t_tLiteral
			>
		auto constexpr
		(	operator()
		)	(	Term<t_tLiteral>
			)	const
		->	Term<t_tLiteral>
		{	return {};	}
	};

	template
		<	RingIndexType
				t_nIndex
		>
	auto constexpr inline
		SelectLiteral
	=	LiteralSelector<t_nIndex>
		{}
	;

	template
		<	typename
				t_tProto
		,	Term
				t_vLiteral
		>
	concept
		ProtoLiteralConstraint
	=	t_vLiteral
		(	Type<t_tProto>{}
		)
	;

	template
		<	typename
				t_tProto
		,	Term
				t_vClause
		>
	concept
		ProtoClauseConstraint
	=	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<0z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<1z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<2z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<3z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<4z>(t_vClause)
		>
	and	ProtoLiteralConstraint
		<	t_tProto
		,	SelectLiteral<5z>(t_vClause)
		>
	;

	template
		<	typename
				t_tProto
		,	Term
				t_vTerm
		>
	concept
		ProtoConstraint
	=	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<0z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<1z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<2z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<3z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<4z>(t_vTerm)
		>
	or	ProtoClauseConstraint
		<	t_tProto
		,	SelectClause<5z>(t_vTerm)
		>
	;
}

module :private;

/// ****************************************************************************
///	Tests for Concepts
/// ****************************************************************************

struct P {};
struct Q {};
struct R {};
struct S {};

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
