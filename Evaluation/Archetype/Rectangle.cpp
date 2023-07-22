export module Evaluation.Archetype.Rectangle;

import Evaluation.Archetype.BasicShape;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Rectangle">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Splice("BasicShape"_id)
		.	Member("ComputeSizeMultiplier", Type<Fraction<>>)
		;
	}
}
