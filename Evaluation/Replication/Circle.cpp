export module Evaluation.Replication.Circle;

import Evaluation.Dependency.PiFraction;

import Std;

export namespace
	Bodies3D
{
	struct
		Circle
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
	(	ComputeVolumeCircle
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
				+	5z
				)
		;

		return
			PiFraction
			<	1z
			,	4z
			>{}
		*	vHeight
		*	vHeight
		;
	}
}
