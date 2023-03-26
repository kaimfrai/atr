export module Evaluation.Archetype.Cylinder;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.PiFraction;

import Meta.ID.Alias;
import Meta.ID.Literals;
import Meta.Token.Type;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Cylinder">
		,	auto
			&&	o_rConfig
		)
	{
		o_rConfig("Height", "Width");
		Configure("BasicBody"_ID, o_rConfig);
		o_rConfig("ComputeVolumeMultiplier", ::Meta::Type<PiFraction<1z, 4z>>);
	}
}
