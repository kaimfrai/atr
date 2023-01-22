export module Evaluation.Virtual.Square;

export import Evaluation.Virtual.RectangularShape;

import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
	{
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
	};
}
