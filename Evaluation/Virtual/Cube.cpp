export module Evaluation.Virtual.Cube;

export import Evaluation.Virtual.Square;
export import Evaluation.Virtual.CubicBody;

import Evaluation.Shared.DataTypes;

export namespace
	Bodies3D
{
	struct
		Cube
	:	CubicBody
		<	Shapes2D::Square
		>
	{
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				this
				->	Shapes2D
				.	Width
			;
		}
	};
}
