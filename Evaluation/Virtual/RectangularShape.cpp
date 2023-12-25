export module Evaluation.Virtual.RectangularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.Fraction;

export namespace
	Shapes2D
{
	struct
		RectangularShape
	:	BasicShape
	{
		float
			Height
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	float
			override
		{	return
				Height
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
			override
		{	return
				Fraction<>
				{}
			;
		}
	};
}
