export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Configure
	)	(	ID<"Head">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Sphere"_id)
			("LeftEye", "Sphere"_id)
		.	Alias("RightEyeColorRed", "LeftEyeColorRed")
		.	Alias("RightEyeColorGreen", "LeftEyeColorGreen")
		.	Alias("RightEyeColorBlue", "LeftEyeColorBlue")
		.	Alias("RightEyeColorAlpha", "LeftEyeColorAlpha")
		.	Alias("RightEyePointLongitudinal", "LeftEyePointLongitudinal")
		.	Alias("RightEyePointVertical", "LeftEyePointVertical")
			("RightEye", "Sphere"_id)
		;
	}
}
