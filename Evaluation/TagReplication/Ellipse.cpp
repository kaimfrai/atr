export module Evaluation.TagReplication.Ellipse;

import Evaluation.TagReplication.Tag;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Ellipse
	{
		ETag
			Tag
		=	ETag::Ellipse
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
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeEllipse
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Ellipse const
		*	aEllipse
		=	static_cast
			<	Ellipse const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	4z
			>{}
		*	aEllipse
			->	Height
		*	aEllipse
			->	Width
		;
	}
}
