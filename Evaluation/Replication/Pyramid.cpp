export module Evaluation.Replication.Pyramid;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.Fraction;

export namespace
	Bodies3D
{
	struct
		Pyramid
	{
		Float
			Depth
		;
		Float
			Height
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumePyramid
		(	void const
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
