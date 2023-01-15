export module Meta.Logic.Bit.Conjunction;

import Meta.Logic.BitTerm;
import Meta.Logic.Bit.BinaryFunction;

export namespace
	Meta::Logic::Bit
{
	BinaryFunction<BitTerm> constexpr inline
		ComputeConjunction
	=	+[]	(	BitTerm const
				&	i_rLeft
			,	BitTerm const
				&	i_rRight
			)
		->	BitTerm
		{	return
			Union
			(	i_rLeft
			,	i_rRight
			);
		}
	;
}
