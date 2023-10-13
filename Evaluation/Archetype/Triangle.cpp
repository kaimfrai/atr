export module Evaluation.Archetype.Triangle;

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
		,	ID<"Triangle">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Splice("BasicShape"_id)
			.	Member("ComputeSizeMultiplier", Type<Fraction<1z, 2z>>)
		;
	}
}
