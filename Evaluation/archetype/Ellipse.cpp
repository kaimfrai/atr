export module Evaluation.Archetype.Ellipse;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"Ellipse">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicShape"_id)
			("ComputeAreaMultiplier", Type<PiFraction<1z, 4z>>)
		;
	}
}
