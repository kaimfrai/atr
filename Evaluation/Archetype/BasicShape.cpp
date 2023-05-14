export module Evaluation.Archetype.BasicShape;

import Evaluation.Shared.DataTypes;

import Meta.ID.Alias;
import Meta.Token.Type;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"BasicShape">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Height", ::Meta::Type<Float>)
			("Width", ::Meta::Type<Float>)
			("Color", ::Meta::Type<RGBAColor>)
		;
	}
}
