export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Head">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Splice("Sphere"_id)
		.	PrefixSplice("LeftEye", "Sphere"_id)
		.	Alias("RightEyeColorRed", "LeftEyeColorRed")
		.	Alias("RightEyeColorGreen", "LeftEyeColorGreen")
		.	Alias("RightEyeColorBlue", "LeftEyeColorBlue")
		.	Alias("RightEyeColorAlpha", "LeftEyeColorAlpha")
		.	Alias("RightEyePointLongitudinal", "LeftEyePointLongitudinal")
		.	Alias("RightEyePointVertical", "LeftEyePointVertical")
		.	Alias("RightEyeHeight", "LeftEyeHeight")
		.	PrefixSplice("RightEye", "Sphere"_id)
		;
	}
}
