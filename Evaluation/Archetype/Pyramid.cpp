export module Evaluation.Archetype.Pyramid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.Fraction;

import Meta.ID.Alias;
import Meta.ID.Literals;
import Meta.Token.Type;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Pyramid">
		,	auto
			&&	o_rConfig
		)
	{
		Configure("BasicBody"_ID, o_rConfig);
		o_rConfig("ComputeVolumeMultiplier", ::Meta::Type<Fraction<1z, 3z>>);
	}
}
