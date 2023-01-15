export module Meta.Logic.Bit.Disjunction;

import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.BinaryFunction;

export namespace
	Meta::Logic::Bit
{
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
