export module Evaluation.Replication.Ellipsoid;

import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
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
			>{}
		*	aEllipsoid
			->	Depth
		*	aEllipsoid
			->	Height
		*	aEllipsoid
			->	Width
		;
	}
}
