export module Evaluation.Virtual.Cuboid;

import Evaluation.Virtual.Rectangle;
import Evaluation.Virtual.CubicBody;

export namespace
	Bodies3D
{
	struct
		Cuboid
	:	CubicBody
		<	Shapes2D::Rectangle
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
