export module Evaluation.Archetype.Ellipsoid;

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
		,	ID<"Ellipsoid">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Splice("BasicBody"_id)
		.	Member("ComputeSizeMultiplier", Type<PiFraction<1z, 6z>>)
		;
	}
}
