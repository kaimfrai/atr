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
			Width
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	()	const
			noexcept
		->	float
			override
		{	return
				Width
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
