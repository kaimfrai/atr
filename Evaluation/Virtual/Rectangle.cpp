export module Evaluation.Virtual.Rectangle;

import Evaluation.Virtual.RectangularShape;

import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
	{
		Float
			Height
		;

		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Height
			;
		}
	};
}
