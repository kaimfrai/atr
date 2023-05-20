export module Evaluation.Archetype.Rectangle;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.Fraction;

import ATR.Literals;

import Meta.Token.Type;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"Rectangle">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicShape"_id)
			("ComputeAreaMultiplier", ::Meta::Type<Fraction<>>)
		;
	}
}
