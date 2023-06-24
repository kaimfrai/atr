export module Evaluation.Replication.Cylinder;

import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cylinder
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
			->	Depth
		*	aCylinder
			->	Height
		*	aCylinder
			->	Height
		;
	}
}
