export module Evaluation.TagATR.Rectangle;

import Evaluation.TagATR.BasicShape;
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
			.	Static("ComputeSizeMultiplier", Constant<Fraction<>>)
		;
	}
}
