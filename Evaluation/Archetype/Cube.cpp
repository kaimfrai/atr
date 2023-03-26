export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import Meta.ID.Alias;
import Meta.ID.Literals;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Cube">
		,	auto
			&&	o_rConfig
		)
	{
		o_rConfig("Depth", "Width");
		o_rConfig("Height", "Width");
		Configure("Cuboid"_ID, o_rConfig);
	}
}
