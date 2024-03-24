export module Evaluation.Replication.Ellipsoid;

import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
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
		float
			Depth
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeEllipsoid
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Ellipsoid const
		*	aEllipsoid
		=	static_cast
			<	Ellipsoid const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	6z
			>
		*	aEllipsoid
			->	Height
		*	aEllipsoid
			->	Width
		*	aEllipsoid
			->	Depth
		;
	}
}
