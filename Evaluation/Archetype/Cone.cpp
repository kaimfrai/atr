export module Evaluation.Archetype.Cone;

import Evaluation.Archetype.BasicBody;
import Evaluation.Dependency.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Cone">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Width", "Height")
			("BasicBody"_id)
			("ComputeSizeMultiplier", Type<PiFraction<1z, 12z>>)
		;
	}
}
