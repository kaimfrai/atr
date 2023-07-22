export module Evaluation.Replication.Cylinder;

import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cylinder
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
			Depth
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeCylinder
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Cylinder const
		*	aCylinder
		=	static_cast
			<	Cylinder const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	4z
			>{}
		*	aCylinder
			->	Height
		*	aCylinder
			->	Height
		*	aCylinder
			->	Depth
		;
	}
}
