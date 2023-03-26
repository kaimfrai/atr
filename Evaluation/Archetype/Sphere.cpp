export module Evaluation.Archetype.Sphere;

import Evaluation.Archetype.Ellipsoid;

import Meta.ID.Alias;
import Meta.ID.Literals;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Sphere">
		,	auto
			&&	o_rConfig
		)
	{
		o_rConfig("Depth", "Width");
		o_rConfig("Height", "Width");
		Configure("Ellipsoid"_ID, o_rConfig);
	}
}
