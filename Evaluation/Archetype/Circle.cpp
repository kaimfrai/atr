export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID_T<"Circle">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Width", "Height")
			("Ellipse"_id)
		;
	}
}
