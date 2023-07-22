export module Evaluation.Archetype.Triangle;

import Evaluation.Archetype.BasicShape;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Triangle">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
		.	Splice("BasicShape"_id)
		.	Member("ComputeSizeMultiplier", Type<Fraction<1z, 2z>>)
		;
	}
}
