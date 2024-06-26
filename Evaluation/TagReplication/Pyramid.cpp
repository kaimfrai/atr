export module Evaluation.TagReplication.Pyramid;

import Evaluation.TagReplication.Tag;
import Evaluation.Dependency.Fraction;

export namespace
	Bodies3D
{
	struct
		Pyramid
	{
		ETag static constexpr inline
			Tag
		=	ETag::Pyramid
		;

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
		float
			Depth
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
			>
		*	aPyramid
			->	Height
		*	aPyramid
			->	Width
		*	aPyramid
			->	Depth
		;
	}
}
