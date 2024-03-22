export module Evaluation.SOAATR.Cuboid;

import Evaluation.SOAATR.BasicBody;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Cuboid">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Splice("BasicBody"_id)
			.	Member("ComputeSizeMultiplier", Type<Fraction<>>)
		;
	}
}
