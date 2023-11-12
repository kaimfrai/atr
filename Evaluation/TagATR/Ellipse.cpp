export module Evaluation.TagATR.Ellipse;

import Evaluation.TagATR.BasicShape;
import Evaluation.Dependency.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Ellipse">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Splice("BasicShape"_id)
			.	Member("ComputeSizeMultiplier", Type<PiFraction<1z, 4z>>)
		;
	}
}
