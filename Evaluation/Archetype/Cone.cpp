export module Evaluation.Archetype.Cone;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.PiFraction;

import ATR.Literals;

import Meta.Token.Type;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID_T<"Cone">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Width", "Height")
			("BasicBody"_ID)
			("ComputeVolumeMultiplier", ::Meta::Type<PiFraction<1z, 12z>>)
		;
	}
}
