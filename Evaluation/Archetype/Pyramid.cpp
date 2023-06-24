export module Evaluation.Archetype.Pyramid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Pyramid">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicBody"_id)
			("ComputeSizeMultiplier", Type<Fraction<1z, 3z>>)
		;
	}
}
