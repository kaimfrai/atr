export module Evaluation.Archetype.Cylinder;

import Evaluation.Archetype.BasicBody;
import Evaluation.Dependency.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Cylinder">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("Width", "Height")
		.	Splice("BasicBody"_id)
		.	Member("ComputeSizeMultiplier", Type<PiFraction<1z, 4z>>)
		;
	}
}
