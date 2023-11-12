export module Evaluation.TagATR.Cone;

import Evaluation.TagATR.BasicBody;
import Evaluation.Dependency.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Cone">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Width", "Height")
			.	Splice("BasicBody"_id)
			.	Member("ComputeSizeMultiplier", Type<PiFraction<1z, 12z>>)
		;
	}
}
