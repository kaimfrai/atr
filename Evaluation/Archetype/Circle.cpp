export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Circle">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("Width", "Height")
			("Ellipse"_id)
		;
	}
}
