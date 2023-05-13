export module Evaluation.Archetype.Cone;

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
	)	(	::Meta::ID_T<"Cone">
		,	auto
			&&	o_rConfig
		)
	{
		o_rConfig("Width", "Height");
		Configure("BasicBody"_ID, o_rConfig);
		o_rConfig("ComputeVolumeMultiplier", ::Meta::Type<PiFraction<1z, 12z>>);
	}
}
