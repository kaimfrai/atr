export module Evaluation.SOAATR.Rectangle;

import Evaluation.SOAATR.BasicShape;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
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
