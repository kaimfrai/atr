export module Evaluation.Virtual.TriangularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.Fraction;

export namespace
	Shapes2D
{
	struct
		TriangularShape
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
			Fraction
			<	1uz
			,	2uz
			>{};
		}
	};
};
