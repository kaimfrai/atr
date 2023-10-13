export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	auto
			&&	o_rComposer
		,	ID<"Square">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Width", "Height")
			.	Splice("Rectangle"_id)
		;
	}
}
