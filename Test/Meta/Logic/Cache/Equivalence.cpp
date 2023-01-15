export module Test.Meta.Logic.Cache.Equivalence;

import Meta.Logic.ErasedTerm;
import Meta.Logic.Term;
import Meta.Logic.Bit.Clause;
//	provide custom Equivalence
import Meta.Logic.ErasedTerm.Equivalence;

import Std;

export
{
	using ::Meta::DeduceTerm;

	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	::Meta::ErasedTerm const
			&	i_rLeft
		,	::Meta::ErasedTerm const
			&	i_rRight
		)
		noexcept
	->	bool
	{
		if	(	bool const
					bEquivalent
				=	::Meta::operator ==
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
				(	begin(i_rLeft.Literals)
				,	end(i_rLeft.Literals)
				,	begin(i_rRight.Literals)
				,	end(i_rRight.Literals)
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
