export module Evaluation.Archetype.Ellipse;

import Evaluation.Archetype.BasicShape;
import Evaluation.Dependency.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Ellipse">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Splice("BasicShape"_id)
		.	Member("ComputeSizeMultiplier", Type<PiFraction<1z, 4z>>)
		;
	}
}
