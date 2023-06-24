export module Evaluation.Archetype.Ellipsoid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Dependency.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Ellipsoid">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicBody"_id)
			("ComputeSizeMultiplier", Type<PiFraction<1z, 6z>>)
		;
	}
}
