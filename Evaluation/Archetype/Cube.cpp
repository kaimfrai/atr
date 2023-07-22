export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Cube">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("Depth", "Height")
		.	Alias("Width", "Height")
			("Cuboid"_id)
		;
	}
}
