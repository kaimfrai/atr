export module Evaluation.SOAATR.Square;

import Evaluation.SOAATR.Rectangle;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Square">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("Width", "Height")
			.	Splice("Rectangle"_id)
		;
	}
}
