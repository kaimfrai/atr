export module Evaluation.TagReplication.Circle;

import Evaluation.TagReplication.Tag;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Circle
	{
		ETag
			Tag
		=	ETag::Circle
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
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeCircle
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Circle const
		*	aCircle
		=	static_cast
			<	Circle const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	4z
			>{}
		*	aCircle
			->	Height
		*	aCircle
			->	Height
		;
	}
}
