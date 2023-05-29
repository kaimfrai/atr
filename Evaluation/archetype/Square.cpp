export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"Square">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Width", "Height")
			("Rectangle"_id)
		;
	}
}