export module Evaluation.Archetype.Cuboid;

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
	)	(	::Meta::ID_T<"Cuboid">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicBody"_ID)
			("ComputeVolumeMultiplier", ::Meta::Type<Fraction<>>)
		;
	}
}
