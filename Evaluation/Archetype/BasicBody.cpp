export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"BasicBody">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Splice("BasicShape"_id)
		.	Member("Depth", Type<float>)
		;
	}
}
