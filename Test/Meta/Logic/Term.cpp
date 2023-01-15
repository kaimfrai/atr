export module Test.Meta.Logic.Term;

import Meta.Logic;
import Meta.Logic.ErasedTerm.Conjunction;
import Meta.Logic.ErasedTerm.Disjunction;
import Meta.Logic.ErasedTerm.Equivalence;
import Meta.Logic.ErasedTerm.Negation;


import Std;

export
{
	using ::Meta::DeduceTerm;

	template
		<	::Meta::Logic::Bit::Term
				t_vLeftTerm
		,	typename
			...	t_tpLeftLiteral
		,	::Meta::Logic::Bit::Term
				t_vRightTerm
		,	typename
			...	t_tpRightLiteral
		>
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	::Meta::Term<t_vLeftTerm, t_tpLeftLiteral...>
				i_vLeft
		,	::Meta::Term<t_vRightTerm, t_tpRightLiteral...>
				i_vRight
		)
		noexcept
	->	bool
	{
		if	(	bool const
					bEquivalent
				=	i_vLeft.Erased
				==	i_vRight.Erased
			;	not
				bEquivalent
			)
		{	return
				false
			;
		}

		if	(	bool const
					bLiteralsPermutation
			=	::std::is_permutation
				(	begin(i_vLeft.Erased.Literals)
				,	end(i_vLeft.Erased.Literals)
				,	begin(i_vRight.Erased.Literals)
				,	end(i_vRight.Erased.Literals)
				)
			;	not
				bLiteralsPermutation
			)
		{	return
				false
			;
		}

		if	(	bool const
					bEqualClauseCount
				=	i_vLeft.Erased.ClauseCount()
				==	i_vRight.Erased.ClauseCount()
			;	not
				bEqualClauseCount
			)
		{	return
				false
			;
		}

		auto const
			vLeftLiteralSum
		=	i_vLeft.Erased.BitTerm.transform_reduce
			(	0uz
			,	::std::plus<>{}
			,	&Meta::Logic::Bit::Clause::LiteralCount
			)
		;

		auto const
			vRightLiteralSum
		=	i_vRight.Erased.BitTerm.transform_reduce
			(	0uz
			,	::std::plus<>{}
			,	&Meta::Logic::Bit::Clause::LiteralCount
			)
		;

		return
			vLeftLiteralSum
		==	vRightLiteralSum
		;
	}

	template
		<	::Meta::Logic::Bit::Term
				t_vLeftTerm
		,	typename
			...	t_tpLeftLiteral
		,	::Meta::Logic::Bit::Term
				t_vRightTerm
		,	typename
			...	t_tpRightLiteral
		>
	[[nodiscard]]
	auto constexpr
	(	operator and
	)	(	::Meta::Term<t_vLeftTerm, t_tpLeftLiteral...>
				i_vLeft
		,	::Meta::Term<t_vRightTerm, t_tpRightLiteral...>
				i_vRight
		)
		noexcept
	->	DeduceTerm
		<	i_vLeft.Erased
		and	i_vRight.Erased
		>
	{	return
		{};
	}

	template
		<	::Meta::Logic::Bit::Term
				t_vLeftTerm
		,	typename
			...	t_tpLeftLiteral
		,	::Meta::Logic::Bit::Term
				t_vRightTerm
		,	typename
			...	t_tpRightLiteral
		>
	[[nodiscard]]
	auto constexpr
	(	operator or
	)	(	::Meta::Term<t_vLeftTerm, t_tpLeftLiteral...>
				i_vLeft
		,	::Meta::Term<t_vRightTerm, t_tpRightLiteral...>
				i_vRight
		)
		noexcept
	->	DeduceTerm
		<	i_vLeft.Erased
		or	i_vRight.Erased
		>
	{	return
		{};
	}

	template
		<	::Meta::Logic::Bit::Term
				t_vTerm
		,	typename
			...	t_tpLiteral
		>
	[[nodiscard]]
	auto constexpr
	(	operator not
	)	(	::Meta::Term<t_vTerm, t_tpLiteral...>
				i_vTerm
		)
		noexcept
	->	DeduceTerm
		<	not
			i_vTerm.Erased
		>
	{	return
		{};
	}
}
