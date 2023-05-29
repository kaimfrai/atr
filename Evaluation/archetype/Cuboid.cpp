export module Evaluation.Archetype.Cuboid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"Cuboid">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicBody"_id)
			("ComputeVolumeMultiplier", Type<Fraction<>>)
		;
	}
}
