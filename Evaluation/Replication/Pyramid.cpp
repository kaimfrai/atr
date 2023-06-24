export module Evaluation.Replication.Pyramid;

import Evaluation.Dependency.Fraction;

export namespace
	Bodies3D
{
	struct
		Pyramid
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
			Depth
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
	(	ComputeVolumePyramid
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Pyramid const
		*	aPyramid
		=	static_cast
			<	Pyramid const
				*
			>(	i_aObject
			)
		;

		return
			Fraction
			<	1uz
			,	3uz
			>{}
		*	aPyramid
			->	Depth
		*	aPyramid
			->	Height
		*	aPyramid
			->	Width
		;
	}
}
