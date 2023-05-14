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
	->	auto&&
	{	return
		o_rConfig
			("Depth", "Height")
			("Width", "Height")
			("Ellipsoid"_ID)
		;
	}
}
