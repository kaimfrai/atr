export module Evaluation.Virtual.Pyramid;

import Evaluation.Virtual.Triangle;
import Evaluation.Virtual.PyramidicBody;

export namespace
	Bodies3D
{
	struct
		Pyramid
	:	PyramidicBody
		<	Shapes2D::Triangle
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
