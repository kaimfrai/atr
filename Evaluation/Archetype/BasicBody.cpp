export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	auto
			&&	o_rComposer
		,	ID<"BasicBody">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Splice("BasicShape"_id)
			.	Member("Depth", Type<float>)
		;
	}
}
