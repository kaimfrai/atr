export module Evaluation.Archetype.Rectangle;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"Rectangle">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicShape"_id)
			("ComputeAreaMultiplier", Type<Fraction<>>)
		;
	}
}
