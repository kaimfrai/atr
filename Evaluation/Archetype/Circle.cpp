export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import Meta.String.Alias;
import Meta.String.Literals;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Circle">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Width", "Height")
			("Ellipse"_ID)
		;
	}
}
