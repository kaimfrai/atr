export module Evaluation.Archetype.Cuboid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Cuboid">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Splice("BasicBody"_id)
		.	Member("ComputeSizeMultiplier", Type<Fraction<>>)
		;
	}
}
