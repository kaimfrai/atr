export module Evaluation.TagATR.Pyramid;

import Evaluation.TagATR.BasicBody;
import Evaluation.Dependency.Fraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Pyramid">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Splice("BasicBody"_id)
			.	Static("ComputeSizeMultiplier", Constant<Fraction<1z, 3z>>)
		;
	}
}
