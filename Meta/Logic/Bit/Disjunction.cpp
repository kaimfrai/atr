export module Meta.Logic.Bit.Disjunction;

import Meta.Logic.BitTerm;
import Meta.Logic.Bit.BinaryFunction;

export namespace
	Meta::Logic::Bit
{
	BinaryFunction<BitTerm> constexpr inline
		ComputeDisjunction
	=	+[]	(	BitTerm const
				&	i_rLeft
			,	BitTerm const
				&	i_rRight
			)
		->	BitTerm
		{	return
			Intersection
			(	i_rLeft
			,	i_rRight
			);
		}
	;
}
