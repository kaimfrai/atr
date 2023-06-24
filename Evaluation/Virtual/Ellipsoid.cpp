export module Evaluation.Virtual.Ellipsoid;

import Evaluation.Virtual.Ellipse;
import Evaluation.Virtual.SphericBody;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
	:	SphericBody
		<	Shapes2D::Ellipse
		>
	{
		float
			Depth
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	float const
			&
			override
		{	return
				Depth
			;
		}
	};
}
