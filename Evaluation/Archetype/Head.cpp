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
			("LeftEye", "Sphere"_id)
			("RightEyeColorRed", "LeftEyeColorRed")
			("RightEyeColorGreen", "LeftEyeColorGreen")
			("RightEyeColorBlue", "LeftEyeColorBlue")
			("RightEyeColorAlpha", "LeftEyeColorAlpha")
			("RightEyePointLongitudinal", "LeftEyePointLongitudinal")
			("RightEyePointVertical", "LeftEyePointVertical")
			("RightEye", "Sphere"_id)
			("Sphere"_id)
		;
	}
}
