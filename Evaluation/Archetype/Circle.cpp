export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Circle">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("Width", "Height")
		.	Splice("Ellipse"_id)
		;
	}
}
