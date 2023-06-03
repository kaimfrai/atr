export module Evaluation.Virtual.RectangularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.Fraction;

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

		[[nodiscard]]
		auto constexpr
		(	GetWidth
		)	()	const
			noexcept
		->	Float const
			&
			override
		{	return
				Width
			;
		}

		[[nodiscard]]
		auto constexpr
		(	GetComputeAreaMultiplier
		)	()	const
			noexcept
		->	Float
			override
		{	return
			Fraction<>
			{};
		}
	};
}
