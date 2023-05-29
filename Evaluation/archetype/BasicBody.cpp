export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.DataTypes;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"BasicBody">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicShape"_id)
			("Depth", Type<Float>)
		;
	}
}
