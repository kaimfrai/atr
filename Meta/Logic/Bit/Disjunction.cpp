export module Meta.Logic.Bit.Disjunction;

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
	(	Intersection
	)	(	Term const
			&	i_rLeftTerm
		,	Term const
			&	i_rRightTerm
		)
		noexcept
	->	Term
	{
		if	(i_rLeftTerm.IsAbsorbing() or i_rRightTerm.IsAbsorbing())
			return Clause::Absorbing();

		if	(i_rLeftTerm.IsIdentity())
			return i_rRightTerm;
		if	(i_rRightTerm.IsIdentity())
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

		vOptimizer.insert(i_rLeftTerm);
		vOptimizer.insert(i_rRightTerm);

		return {::std::move(vOptimizer)};
	}

	BinaryFunction<Term> constexpr inline
		ComputeDisjunction
	=	+[]	(	Term const
				&	i_rLeft
			,	Term const
				&	i_rRight
			)
		->	Term
		{	return
			Intersection
			(	i_rLeft
			,	i_rRight
			);
		}
	;
}
