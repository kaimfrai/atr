export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Cube">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("Depth", "Height")
		.	Alias("Width", "Height")
		.	Splice("Cuboid"_id)
		;
	}
}
