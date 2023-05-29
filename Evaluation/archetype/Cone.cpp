export module Evaluation.Archetype.Cone;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
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
			("ComputeVolumeMultiplier", Type<PiFraction<1z, 12z>>)
		;
	}
}
