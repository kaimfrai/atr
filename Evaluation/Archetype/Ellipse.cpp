export module Evaluation.Archetype.Ellipse;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.PiFraction;

import ATR.Literals;

import Meta.Token.Type;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID_T<"Ellipse">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicShape"_id)
			("ComputeAreaMultiplier", ::Meta::Type<PiFraction<1z, 4z>>)
		;
	}
}
