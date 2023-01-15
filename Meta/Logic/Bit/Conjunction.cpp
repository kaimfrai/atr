export module Meta.Logic.Bit.Conjunction;

import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.BinaryFunction;

export namespace
	Meta::Logic::Bit
{
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
