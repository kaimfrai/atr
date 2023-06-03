export module Evaluation.Replication.Pyramid;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.Fraction;

export namespace
	Bodies3D
{
	struct
		Pyramid
	{
		RGBAColor
			Color
		;
		Float
			Depth
		;
		Float
			Height
		;
		Float
			Width
		;
	};

	[[nodiscard]]
	auto constexpr
	(	ComputeVolumePyramid
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	Float
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
