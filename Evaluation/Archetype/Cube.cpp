export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	auto
			&&	o_rComposer
		,	ID<"Cube">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Depth", "Height")
			.	Alias("Width", "Height")
			.	Splice("Cuboid"_id)
		;
	}
}
