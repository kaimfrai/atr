export module Evaluation.TagATR.Sphere;

import Evaluation.TagATR.Ellipsoid;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Sphere">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Depth", "Height")
			.	Alias("Width", "Height")
			.	Splice("Ellipsoid"_id)
		;
	}
}
