export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.DataTypes;

import Meta.ID.Alias;
import Meta.ID.Literals;
import Meta.Token.Type;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"BasicBody">
		,	auto
			&&	o_rConfig
		)
	{
		Configure("BasicShape"_ID, o_rConfig);
		o_rConfig("Depth", ::Meta::Type<Float>);
	}
}
