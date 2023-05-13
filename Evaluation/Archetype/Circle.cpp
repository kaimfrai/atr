export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import Meta.ID.Alias;
import Meta.ID.Literals;

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
	{
		o_rConfig("Width", "Height");
		Configure("Ellipse"_ID, o_rConfig);
	}
}
