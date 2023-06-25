export module Evaluation.Replication.Ellipse;

import Evaluation.Dependency.PiFraction;

import Std;

export namespace
	Bodies3D
{
	struct
		Ellipse
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
			PointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
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
