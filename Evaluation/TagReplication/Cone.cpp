export module Evaluation.TagReplication.Cone;

import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cone
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
			->	Height
		*	aCone
			->	Height
		*	aCone
			->	Depth
		;
	}
}
