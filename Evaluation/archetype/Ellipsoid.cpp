export module Evaluation.Archetype.Ellipsoid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"Ellipsoid">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicBody"_id)
			("ComputeVolumeMultiplier", Type<PiFraction<1z, 6z>>)
		;
	}
}
