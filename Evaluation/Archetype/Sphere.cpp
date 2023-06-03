export module Evaluation.Archetype.Sphere;

import Evaluation.Archetype.Ellipsoid;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Sphere">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Depth", "Height")
			("Width", "Height")
			("Ellipsoid"_id)
		;
	}
}
