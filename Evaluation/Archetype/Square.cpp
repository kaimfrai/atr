export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import Meta.String.Alias;
import Meta.String.Literals;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Square">
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
