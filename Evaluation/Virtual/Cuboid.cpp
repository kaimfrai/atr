export module Evaluation.Virtual.Cuboid;

import Evaluation.Virtual.Rectangle;
import Evaluation.Virtual.CubicBody;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	struct
		Cuboid
	:	CubicBody
		<	Shapes2D::Rectangle
		>
	{
		Float
			Depth
		;

		[[nodiscard]]
		auto constexpr
		(	GetDepth
		)	()	const
			noexcept
		->	Float const
			&
			override
		{	return
				Depth
			;
		}
	};
}
