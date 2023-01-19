export module Evaluation.Virtual:RectangularShape;

export import :BasicShape;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.Fraction;

export namespace
	Shapes2D
{
	struct
		RectangularShape
	:	BasicShape
	{
		Float
			Width
		;

		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}

		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				Fraction
				<>{}
			;
		}
	};
}
