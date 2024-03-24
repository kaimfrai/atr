export module Evaluation.SOAATR.Ellipse;

import Evaluation.SOAATR.BasicShape;
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
			.	Static("ComputeSizeMultiplier", Constant<PiFraction<1z, 4z>>)
		;
	}
}
