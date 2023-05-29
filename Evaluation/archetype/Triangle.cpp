export module Evaluation.Archetype.Triangle;

import Evaluation.Archetype.BasicShape;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"Triangle">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicShape"_id)
			("ComputeAreaMultiplier", Type<Fraction<1z, 2z>>)
		;
	}
}
