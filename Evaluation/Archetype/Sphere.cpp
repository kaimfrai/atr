export module Evaluation.Archetype.Sphere;

import Evaluation.Archetype.Ellipsoid;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Sphere">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("Depth", "Height")
		.	Alias("Width", "Height")
		.	Splice("Ellipsoid"_id)
		;
	}
}
