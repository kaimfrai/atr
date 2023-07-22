export module Evaluation.Archetype.Cuboid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Cuboid">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicBody"_id)
		.	Member("ComputeSizeMultiplier", Type<Fraction<>>)
		;
	}
}
