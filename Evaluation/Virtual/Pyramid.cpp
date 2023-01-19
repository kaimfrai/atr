export module Evaluation.Virtual:Pyramid;

export import :Triangle;
export import :PyramidicBody;

import Evaluation.Shared.DataTypes;

export namespace
	Bodies3D
{
	struct
		Pyramid
	:	PyramidicBody
		<	Shapes2D::Triangle
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
