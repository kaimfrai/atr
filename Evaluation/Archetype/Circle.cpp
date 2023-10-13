export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	auto
			&&	o_rComposer
		,	ID<"Circle">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Width", "Height")
			.	Splice("Ellipse"_id)
		;
	}
}
