export module Evaluation.Archetype.Ellipse;

import Evaluation.Archetype.BasicShape;

import Evaluation.Shared.PiFraction;

import Meta.ID.Alias;
import Meta.ID.Literals;
import Meta.Token.Type;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Ellipse">
		,	auto
			&&	o_rConfig
		)
	{
		Configure("BasicShape"_ID, o_rConfig);
		o_rConfig("ComputeAreaMultiplier", ::Meta::Type<PiFraction<1z, 4z>>);
	}
}
