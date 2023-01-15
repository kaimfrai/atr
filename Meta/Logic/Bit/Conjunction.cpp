export module Meta.Logic.Bit.Conjunction;

import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.Clause;
import Meta.Logic.Bit.Optimizer;
import Meta.Logic.Bit.BinaryFunction;
import Meta.Logic.Bit.Equivalence;

import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.CountOnes;

import Std;

export namespace
	Meta::Logic::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Union
	)	(	Term const
			&	i_rLeftTerm
		,	Term const
			&	i_rRightTerm
		)
		noexcept
	->	Term
	{
		if	(i_rLeftTerm.IsIdentity() or i_rRightTerm.IsIdentity())
			return Clause::Identity();

		if	(i_rLeftTerm.IsAbsorbing())
			return i_rRightTerm;
		if	(i_rRightTerm.IsAbsorbing())
			return i_rLeftTerm;

		if	(i_rLeftTerm == i_rRightTerm)
			return i_rLeftTerm;

		auto const
			nCombinedLiteralCount
		=	CountOnes
			(	i_rLeftTerm.LiteralField()
			bitor
				i_rRightTerm.LiteralField()
			)
		;

		Optimizer
			vOptimizer
		{	nCombinedLiteralCount
		};

		for	(	Clause
					i_vLeftClause
			:	i_rLeftTerm
			)
		{
			for	(	Clause
						i_vRightClause
				:	i_rRightTerm
				)
			{
				vOptimizer.insert(Union(i_vLeftClause, i_vRightClause));
			}
		}

		return {::std::move(vOptimizer)};
	}

	BinaryFunction<Term> constexpr inline
		ComputeConjunction
	=	+[]	(	Term const
				&	i_rLeft
			,	Term const
				&	i_rRight
			)
		->	Term
		{	return
			Union
			(	i_rLeft
			,	i_rRight
			);
		}
	;
}
