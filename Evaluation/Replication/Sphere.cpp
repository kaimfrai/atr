export module Evaluation.Replication.Sphere;

import Evaluation.Dependency.PiFraction;

import Std;

export namespace
	Bodies3D
{
	struct
		Sphere
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
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeSphere
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		float const
			vHeight
		=	*	::std::launder
				(	static_cast
					<	float const
						*
					>(	i_aObject
					)
				+	4z
				)
		;

		return
			PiFraction
			<	1z
			,	6z
			>{}
		*	vHeight
		*	vHeight
		*	vHeight
		;
	}
}
