export module Evaluation.Archetype.Ellipsoid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.PiFraction;

import ATR.Literals;

import Meta.Token.Type;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID_T<"Ellipsoid">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicBody"_ID)
			("ComputeVolumeMultiplier", ::Meta::Type<PiFraction<1z, 6z>>)
		;
	}
}
