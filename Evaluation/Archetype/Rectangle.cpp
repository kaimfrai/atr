export module Evaluation.Archetype.Rectangle;

import Evaluation.Archetype.BasicShape;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	auto
			&&	o_rComposer
		,	ID<"Rectangle">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Splice("BasicShape"_id)
			.	Member("ComputeSizeMultiplier", Type<Fraction<>>)
		;
	}
}
