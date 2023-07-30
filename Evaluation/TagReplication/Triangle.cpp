export module Evaluation.TagReplication.Triangle;

import Evaluation.Dependency.Fraction;

export namespace
	Bodies3D
{
	struct
		Triangle
	{
		float
			ColorRed
		;
		float
			ColorGreen
		;
		float
			ColorBlue
		;
		float
			ColorAlpha
		;
		float
			PointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
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

