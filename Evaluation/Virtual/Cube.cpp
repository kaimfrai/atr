export module Evaluation.Virtual.Cube;

import Evaluation.Virtual.Square;
import Evaluation.Virtual.CubicBody;

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
