export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import ATR.Literals;

export namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Head">
		)
	->	auto&&
	{
		o_rComposer
		.	Splice("Sphere"_id)
		;

		{
			o_rComposer
			.	Alias("LeftEyeColorAlpha", "ColorAlpha")
			;
			auto const
				_
			=	o_rComposer
				.	ScopedPrefix
					(	"LeftEye"
					)
			;
			o_rComposer
			.	Splice
				(	"Sphere"_id
				)
			;
		}

		{
			o_rComposer
			.	Alias("RightEyeColorRed", "LeftEyeColorRed")
			.	Alias("RightEyeColorGreen", "LeftEyeColorGreen")
			.	Alias("RightEyeColorBlue", "LeftEyeColorBlue")
			.	Alias("RightEyeColorAlpha", "LeftEyeColorAlpha")
			.	Alias("RightEyePointLongitudinal", "LeftEyePointLongitudinal")
			.	Alias("RightEyePointVertical", "LeftEyePointVertical")
			.	Alias("RightEyeHeight", "LeftEyeHeight")
			;
			auto const
				_
			=	o_rComposer
				.	ScopedPrefix
					(	"RightEye"
					)
			;
			return
				o_rComposer
				.	Splice("Sphere"_id)
			;
		}
	}
}
