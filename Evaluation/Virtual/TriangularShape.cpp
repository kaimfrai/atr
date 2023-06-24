export module Evaluation.Virtual.TriangularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.Fraction;

export namespace
	Shapes2D
{
	struct
		TriangularShape
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
		->	float const
			&
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
			Fraction
			<	1uz
			,	2uz
			>{};
		}
	};
};
