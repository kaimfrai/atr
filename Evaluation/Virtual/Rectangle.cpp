export module Evaluation.Virtual.Rectangle;

import Evaluation.Virtual.RectangularShape;

import Evaluation.Dependency.DataTypes;

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

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	Float const
			&
			override
		{	return
				Height
			;
		}
	};
}
