export module Evaluation.Archetype.Pyramid;

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
		,	ID<"Pyramid">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Splice("BasicBody"_id)
		.	Member("ComputeSizeMultiplier", Type<Fraction<1z, 3z>>)
		;
	}
}
