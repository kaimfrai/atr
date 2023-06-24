export module Evaluation.Replication.Triangle;

import Evaluation.Dependency.Fraction;

import Std;

export namespace
	Bodies3D
{
	struct
		Triangle
	{
		float
			ColorAlpha
		;
		float
			ColorBlue
		;
		float
			ColorGreen
		;
		float
			ColorRed
		;
		float
			Height
		;
		float
			Width
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeTriangle
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Triangle const
		*	aTriangle
		=	static_cast
			<	Triangle const
				*
			>(	i_aObject
			)
		;

		return
			Fraction
			<	1z
			,	2z
			>{}
		*	aTriangle
			->	Height
		*	aTriangle
			->	Width
		;
	}
}

