export module Evaluation.Archetype.BasicShape;

import Evaluation.Dependency.DataTypes;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"BasicShape">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Height", Type<Float>)
			("Width", Type<Float>)
			("Color", Type<RGBAColor>)
		;
	}
}
