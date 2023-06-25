export module Evaluation.Replication.Cone;

import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cone
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
			PointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeCone
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Cone const
		*	aCone
		=	static_cast
			<	Cone const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	12z
			>{}
		*	aCone
			->	Depth
		*	aCone
			->	Height
		*	aCone
			->	Height
		;
	}
}
