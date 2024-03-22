export module Evaluation.SOAATR.BasicBody;

import Evaluation.SOAATR.BasicShape;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
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
