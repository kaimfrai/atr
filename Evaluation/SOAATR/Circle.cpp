export module Evaluation.SOAATR.Circle;

import Evaluation.SOAATR.Ellipse;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Circle">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Width", "Height")
			.	Splice("Ellipse"_id)
		;
	}
}
