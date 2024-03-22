export module Evaluation.SOAATR.Cube;

import Evaluation.SOAATR.Cuboid;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Cube">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Depth", "Height")
			.	Alias("Width", "Height")
			.	Splice("Cuboid"_id)
		;
	}
}
