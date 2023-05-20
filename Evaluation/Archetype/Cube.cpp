export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import Meta.String.Alias;
import Meta.String.Literals;

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
	->	auto&&
	{	return
		o_rConfig
			("Depth", "Height")
			("Width", "Height")
			("Cuboid"_ID)
		;
	}
}
