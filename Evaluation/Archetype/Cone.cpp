export module Evaluation.Archetype.Cone;

import Evaluation.Archetype.BasicBody;
import Evaluation.Dependency.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Cone">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("Width", "Height")
		.	Splice("BasicBody"_id)
		.	Member("ComputeSizeMultiplier", Type<PiFraction<1z, 12z>>)
		;
	}
}
