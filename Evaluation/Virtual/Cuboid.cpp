export module Evaluation.Virtual:Cuboid;

export import :Rectangle;
export import :CubicBody;

import Evaluation.Shared.DataTypes;

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

		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Depth
			;
		}
	};
}
