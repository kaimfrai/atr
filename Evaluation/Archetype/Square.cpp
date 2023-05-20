export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID_T<"Square">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Width", "Height")
			("Rectangle"_ID)
		;
	}
}
