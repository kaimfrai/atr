export module Evaluation.Archetype.Rectangle;

import Evaluation.Archetype.BasicShape;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Rectangle">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicShape"_id)
			("ComputeSizeMultiplier", Type<Fraction<>>)
		;
	}
}
