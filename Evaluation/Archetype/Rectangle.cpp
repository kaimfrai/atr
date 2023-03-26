export module Evaluation.Archetype.Rectangle;

import Evaluation.Archetype.BasicShape;

import Evaluation.Shared.Fraction;

import Meta.ID.Alias;
import Meta.ID.Literals;
import Meta.Token.Type;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Rectangle">
		,	auto
			&&	o_rConfig
		)
	{
		Configure("BasicShape"_ID, o_rConfig);
		o_rConfig("ComputeAreaMultiplier", ::Meta::Type<Fraction<>>);
	}
}
