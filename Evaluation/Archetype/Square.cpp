export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Square">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("Width", "Height")
		.	Splice("Rectangle"_id)
		;
	}
}
