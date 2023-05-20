export module Evaluation.Archetype.Cuboid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.Fraction;

import ATR.Literals;

import Meta.Token.Type;

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
			("ComputeVolumeMultiplier", ::Meta::Type<Fraction<>>)
		;
	}
}
