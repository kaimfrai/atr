export module Evaluation.Virtual.Square;

import Evaluation.Virtual.RectangularShape;

import Evaluation.Dependency.DataTypes;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
	{
		[[nodiscard]]
		auto constexpr
		(	GetHeight
		)	()	const
			noexcept
		->	Float const
			&
			override
		{	return
				Width
			;
		}
	};
}
