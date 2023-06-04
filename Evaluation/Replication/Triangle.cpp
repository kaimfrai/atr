export module Evaluation.Replication.Triangle;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.Fraction;

import Std;

export namespace
	Bodies3D
{
	struct
		Triangle
	{
		RGBAColor
			Color
		;
		Float
			Height
		;
		Float
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
	->	Float
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

