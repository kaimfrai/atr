export module Evaluation.TagATR.Ellipsoid;

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
		,	ID<"Ellipsoid">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Splice("BasicBody"_id)
			.	Member("ComputeSizeMultiplier", Type<PiFraction<1z, 6z>>)
		;
	}
}
