export module Test.Meta.Logic.Cache.Equivalence;

import Meta.Logic.Erased.Term;
import Meta.Logic.Term;
import Meta.Logic.Bit.Clause;
//	provide custom Equivalence
import Meta.Logic.Erased.Equivalence;

import Std;

export
{
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	::Meta::Logic::Erased::Term const
			&	i_rLeft
		,	::Meta::Logic::Erased::Term const
			&	i_rRight
		)
		noexcept
	->	bool
	{
		if	(	bool const
					bEquivalent
				=	::Meta::Logic::Erased::operator ==
					(	i_rLeft
					,	i_rRight
					)
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
				(	::std::begin(i_rLeft.Literals)
				,	::std::end(i_rLeft.Literals)
				,	::std::begin(i_rRight.Literals)
				,	::std::end(i_rRight.Literals)
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
				=	i_rLeft.ClauseCount()
				==	i_rRight.ClauseCount()
			;	not
				bEqualClauseCount
			)
		{	return
				false
			;
		}

		auto const
			vLeftLiteralSum
		=	i_rLeft.BitTerm.transform_reduce
			(	0uz
			,	::std::plus<>{}
			,	&Meta::Logic::Bit::Clause::LiteralCount
			)
		;

		auto const
			vRightLiteralSum
		=	i_rRight.BitTerm.transform_reduce
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
}
