export module Evaluation.SOAATR.Cylinder;

import Evaluation.SOAATR.BasicBody;
import Evaluation.Dependency.PiFraction;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Cylinder">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Width", "Height")
			.	Splice("BasicBody"_id)
			.	Static("ComputeSizeMultiplier", Constant<PiFraction<1z, 4z>>)
		;
	}
}
